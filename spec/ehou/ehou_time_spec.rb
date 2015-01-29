# coding: utf-8
require 'spec_helper'
require 'active_support/time'

describe Ehou::EhouTime do
  it 'should return ehou string' do
    expect(Time.new(2014).ehou).to eq "東北東"
    expect(Time.new(2015).ehou).to eq "西南西"
  end

  it 'should return ehou angle' do
    expect(Time.new(2014).ehou.angle).to eq 75
    expect(Time.new(2015).ehou.angle).to eq 255
  end

  it 'should work using ActiveSupport::TimeWithZone' do
    Time.zone = 'Asia/Tokyo'
    expect(Time.zone.local(2014).ehou).to eq "東北東"
    expect(Time.zone.local(2014).ehou.angle).to eq 75
    expect(Time.zone.local(2015).ehou).to eq "西南西"
    expect(Time.zone.local(2015).ehou.angle).to eq 255
  end
end
