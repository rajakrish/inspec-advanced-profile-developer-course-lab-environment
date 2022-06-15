# copyright: 2018, The Authors

path = "/workspaces/inspec-advanced-profile-developer-course-lab-environment/resources/file/test.txt"

# you can also use plain tests
describe file_resource(path) do
  its("file_size") { should cmp <=4 }
  its("contents") { should include 'sample' }
  its("file_owner") { should cmp "codespace" }
  its("file_group") { should cmp "codespace" }
  its("path_of_file") { should include "test.txt" }
end

