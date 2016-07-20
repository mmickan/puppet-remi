require 'spec_helper_acceptance'

describe 'remi class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'remi': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end

    describe file('/etc/yum.repos.d/remi-safe.repo') do
      it { should be_file }
      its(:content) { should match '\[remi-safe\]' }
      its(:content) { should match 'mirrorlist=http://rpms.remirepo.net/enterprise/./safe/mirror' }
      its(:content) { should match 'enabled=1' }
      its(:content) { should match 'gpgcheck=1' }
      its(:content) { should match 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi' }
    end

    describe file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi') do
      it { should be_file }
    end
  end

end
