describe file('/tmp/settings.ini') do
  it { should be_file }
end

describe ini('/tmp/settings.ini') do
  its('quantity') { should eq "1" }
end

describe file('/tmp/settings.ini') do
  its(:content) { should match /width = 10/ }
end
