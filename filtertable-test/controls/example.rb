
describe filtertable.where( name: "Donny") do
  it { should have_car }
end

describe filtertable.where( name: "Sarah") do
  it { should have_car }
  it { should be_girl }
  it { should have_red}
end

describe filtertable do
  its('boys_count') {should cmp 2}
  its('harvard_count') {should cmp 2}
end