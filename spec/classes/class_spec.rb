require 'spec_helper'
require 'classes/shared_gpgkey'
require 'classes/shared_base'
require 'classes/shared_php55'
require 'classes/shared_php56'
require 'classes/shared_test'
require 'classes/shared_base_debuginfo'
require 'classes/shared_php55_debuginfo'
require 'classes/shared_php56_debuginfo'
require 'classes/shared_test_debuginfo'
require 'classes/shared_php70'
require 'classes/shared_php70_debuginfo'
require 'classes/shared_php70_test'
require 'classes/shared_php70_test_debuginfo'
require 'classes/shared_php71'
require 'classes/shared_php71_debuginfo'
require 'classes/shared_php71_test'
require 'classes/shared_php71_test_debuginfo'
require 'classes/shared_safe'

describe 'remi' do
  it { should create_class('remi') }
  it { should contain_class('remi::params') }

  context "operatingsystem => #{default_facts[:operatingsystem]}" do
    context 'operatingsystemmajrelease => 7' do
      let :facts do
        default_facts.merge({
          :operatingsystemrelease    => '7.2.1511',
          :operatingsystemmajrelease => '7',
        })
      end

      it_behaves_like :gpgkey_7
      it_behaves_like :base_7
      it_behaves_like :php55_7
      it_behaves_like :php56_7
      it_behaves_like :test_7
      it_behaves_like :base_debuginfo_7
      it_behaves_like :php55_debuginfo_7
      it_behaves_like :php56_debuginfo_7
      it_behaves_like :test_debuginfo_7
      it_behaves_like :php70_7
      it_behaves_like :php70_debuginfo_7
      it_behaves_like :php70_test_7
      it_behaves_like :php70_test_debuginfo_7
      it_behaves_like :php71_7
      it_behaves_like :php71_debuginfo_7
      it_behaves_like :php71_test_7
      it_behaves_like :php71_test_debuginfo_7
      it_behaves_like :safe_7

      context 'remi_baseurl => https://example.com/remi/7/x86_64' do
        let(:params) {{ :remi_baseurl => "https://example.com/remi/7/x86_64" }}
        it { should contain_yumrepo('remi').with('baseurl' => 'https://example.com/remi/7/x86_64') }
        it { should contain_yumrepo('remi').with('mirrorlist' => 'absent') }
      end

      context 'remi_mirrorlist => absent' do
        let(:params) {{ :remi_mirrorlist => 'absent' }}
        it { should contain_yumrepo('remi').with('mirrorlist' => 'absent') }
      end

      context 'operatingsystemmajrelease undef' do
        let :facts do
          default_facts.merge({
            :operatingsystemrelease => '7.2.1511',
          })
        end

        it_behaves_like :gpgkey_7
        it_behaves_like :base_7
        it_behaves_like :php55_7
        it_behaves_like :php56_7
        it_behaves_like :test_7
        it_behaves_like :base_debuginfo_7
        it_behaves_like :php55_debuginfo_7
        it_behaves_like :php56_debuginfo_7
        it_behaves_like :test_debuginfo_7
        it_behaves_like :php70_7
        it_behaves_like :php70_debuginfo_7
        it_behaves_like :php70_test_7
        it_behaves_like :php70_test_debuginfo_7
        it_behaves_like :php71_7
        it_behaves_like :php71_debuginfo_7
        it_behaves_like :php71_test_7
        it_behaves_like :php71_test_debuginfo_7
        it_behaves_like :safe_7
      end
    end

    context 'operatingsystemmajrelease => 6' do
      let :facts do
        default_facts.merge({
          :operatingsystemrelease    => '6.8',
          :operatingsystemmajrelease => '6',
        })
      end

      it_behaves_like :gpgkey_6
      it_behaves_like :base_6
      it_behaves_like :php55_6
      it_behaves_like :php56_6
      it_behaves_like :test_6
      it_behaves_like :base_debuginfo_6
      it_behaves_like :php55_debuginfo_6
      it_behaves_like :php56_debuginfo_6
      it_behaves_like :test_debuginfo_6
      it_behaves_like :php70_6
      it_behaves_like :php70_debuginfo_6
      it_behaves_like :php70_test_6
      it_behaves_like :php70_test_debuginfo_6
      it_behaves_like :php71_6
      it_behaves_like :php71_debuginfo_6
      it_behaves_like :php71_test_6
      it_behaves_like :php71_test_debuginfo_6
      it_behaves_like :safe_6

      context 'remi_baseurl => https://example.com/remi/6/x86_64' do
        let(:params) {{ :remi_baseurl => "https://example.com/remi/6/x86_64" }}
        it { should contain_yumrepo('remi').with('baseurl' => 'https://example.com/remi/6/x86_64') }
        it { should contain_yumrepo('remi').with('mirrorlist' => 'absent') }
      end

      context 'remi_mirrorlist => absent' do
        let(:params) {{ :remi_mirrorlist => 'absent' }}
        it { should contain_yumrepo('remi').with('mirrorlist' => 'absent') }
      end

      context 'operatingsystemmajrelease undef' do
        let :facts do
          default_facts.merge({
            :operatingsystemrelease => '6.8',
          })
        end

        it_behaves_like :gpgkey_6
        it_behaves_like :base_6
        it_behaves_like :php55_6
        it_behaves_like :php56_6
        it_behaves_like :test_6
        it_behaves_like :base_debuginfo_6
        it_behaves_like :php55_debuginfo_6
        it_behaves_like :php56_debuginfo_6
        it_behaves_like :test_debuginfo_6
        it_behaves_like :php70_6
        it_behaves_like :php70_debuginfo_6
        it_behaves_like :php70_test_6
        it_behaves_like :php70_test_debuginfo_6
        it_behaves_like :php71_6
        it_behaves_like :php71_debuginfo_6
        it_behaves_like :php71_test_6
        it_behaves_like :php71_test_debuginfo_6
        it_behaves_like :safe_6
      end
    end

    context 'operatingsystemmajrelease => 5' do
      let :facts do
        default_facts.merge({
          :operatingsystemrelease    => '5.9',
          :operatingsystemmajrelease => '5',
        })
      end

      it_behaves_like :gpgkey_5
      it_behaves_like :base_5
      it_behaves_like :php55_5
      it_behaves_like :php56_5
      it_behaves_like :test_5
      it_behaves_like :base_debuginfo_5
      it_behaves_like :php55_debuginfo_5
      it_behaves_like :php56_debuginfo_5
      it_behaves_like :test_debuginfo_5
      it_behaves_like :php70_5
      it_behaves_like :php70_debuginfo_5
      it_behaves_like :php70_test_5
      it_behaves_like :php70_test_debuginfo_5
      it_behaves_like :php71_5
      it_behaves_like :php71_debuginfo_5
      it_behaves_like :php71_test_5
      it_behaves_like :php71_test_debuginfo_5
      it_behaves_like :safe_5
    end
  end
end
