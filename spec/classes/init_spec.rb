require 'spec_helper'

describe 'geoip' do
  context 'supported operating systems' do
    on_supported_os.each do |os, os_facts|
      describe 'without any parameters' do
        let(:params) { {} }

        describe "on #{os}" do
          let(:facts) { os_facts }

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_class('geoip') }
          it { is_expected.to contain_class('geoip::config') }
          it { is_expected.to contain_class('geoip::install').that_comes_before('Class[geoip::config]') }
        end
      end
    end
  end

end

# vim: ft=ruby
