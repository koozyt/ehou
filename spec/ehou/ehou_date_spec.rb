# coding: utf-8
require 'spec_helper'

describe Ehou::EhouDate do
  it 'should return ehou string' do
    expect(Date.new(2014).ehou).to eq "東北東"
    expect(Date.new(2015).ehou).to eq "西南西"
  end

  it 'should return ehou angle' do
    expect(Date.new(2014).ehou.angle).to eq 75
    expect(Date.new(2015).ehou.angle).to eq 255
  end
end
