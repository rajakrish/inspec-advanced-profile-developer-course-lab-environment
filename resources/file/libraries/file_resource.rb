class File < Inspec.resource(1)
    name "file_resource"

    def initialize(path)
        @path = path
    end

    def file_owner
        inspec.command("stat -c '%U' #{@path}").stdout.strip
    end     

    def file_group
        inspec.command("stat -c '%G' #{@path}").stdout.strip
    end

    def file_size
        inspec.command("du #{@path}").stdout.strip.split[0]
    end

    def contents
        inspec.command("cat #{@path}").stdout    
    end

    def path_of_file
        File.absolute_path(@path).stdout
    end
end