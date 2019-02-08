require 'spec_helper'

describe 'geoip::update' do
  context 'supported operating systems' do
    on_supported_os.each do |os, os_facts|
      describe 'without any parameters' do
        let(:params) { {} }

        describe "on #{os}" do
          let(:facts) do
            os_facts[:facts]
          end

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_cron('geoip') }
        end
      end
    end
  end
end

# vim: ft=ruby
