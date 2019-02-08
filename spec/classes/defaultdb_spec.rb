require 'spec_helper'

os_fixtures = @os_fixtures

describe 'geoip::defaultdb' do
  context 'supported operating systems' do
    os_fixtures.each do |osname, osfixtures|
      describe 'without any parameters' do
        let(:params) { {} }

        describe "on #{osname}" do
          let(:facts) do
            osfixtures[:facts]
          end

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_file('geoip_defaultdb_link') }
        end
      end
    end
  end
end

# vim: ft=ruby
