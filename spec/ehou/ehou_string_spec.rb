# coding: utf-8
require 'spec_helper'
require 'active_support/time'

describe Ehou::EhouString do
  def get_ehou(year)
    e = Date.new(year)
    [e.ehou.angle, e.ehou]
  end
  it 'should select correct ehous' do
    expect(get_ehou(2010)).to eq [255, "西南西"]
    expect(get_ehou(2011)).to eq [165, "南南東"]
    expect(get_ehou(2012)).to eq [345, "北北西"]
    expect(get_ehou(2013)).to eq [165, "南南東"]
    expect(get_ehou(2014)).to eq [ 75, "東北東"]
    expect(get_ehou(2015)).to eq [255, "西南西"]
    expect(get_ehou(2016)).to eq [165, "南南東"]
    expect(get_ehou(2017)).to eq [345, "北北西"]
    expect(get_ehou(2018)).to eq [165, "南南東"]
    expect(get_ehou(2019)).to eq [ 75, "東北東"]
  end
end
