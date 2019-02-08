require 'spec_helper'

describe 'geoip::defaultdb' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      it { is_expected.to contain_file('geoip_defaultdb_link') }
    end
  end
end
