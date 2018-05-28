require 'spec_helper'
describe 'lnxhardening' do
  context 'with default values for all parameters' do
    it { should contain_class('lnxhardening') }
  end
end
