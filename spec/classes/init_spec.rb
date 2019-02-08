require 'spec_helper'

describe 'geoip' do
  context 'supported operating systems' do
    on_supported_os.each do |os, os_facts|
      describe 'without any parameters' do
        let(:params) { {} }

        describe "on #{os}" do
          let(:facts) do
            os_facts[:facts]
          end

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_class('geoip') }
          it { is_expected.to contain_class('geoip::params') }
          it { is_expected.to contain_class('geoip::config') }
          it { is_expected.to contain_class('geoip::install').that_comes_before('geoip::config') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'without any parameters' do
      let(:params) { {} }

      describe 'on AmigaOS' do
        let(:facts) do
          {
            osfamily: 'Commodore',
            operatingsystem: 'AmigaOS',
          }
        end

        it { expect { is_expected.to contain_class('geoip::params') }.to raise_error(Puppet::Error, %r{osfamily `Commodore` not supported}) }
      end
      describe 'on Scientific Linux 5' do
        let(:facts) do
          {
            osfamily: 'RedHat',
            operatingsystem: 'Scientific',
            operatingsystemmajrelease: 5,
          }
        end

        it { expect { is_expected.to contain_class('geoip::params') }.to raise_error(Puppet::Error, %r{operatingsystemmajrelease `5` not supported}) }
      end
    end
  end
end

# vim: ft=ruby
