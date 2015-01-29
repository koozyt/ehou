# coding: utf-8
require 'spec_helper'
require 'active_support/time'

describe Ehou::EhouString do
  def get_ehou(year)
    e = Date.new(year)
    [e.ehou.angle, e.ehou, e.ehou.to_ja, e.ehou.shorten, e.ehou.to_en]
  end

  it 'should select correct ehous' do
    expect(get_ehou(2010)).to eq [255, "西南西", "西南西", "WSW", "West-southwest"]
    expect(get_ehou(2011)).to eq [165, "南南東", "南南東", "SSE", "South-southeast"]
    expect(get_ehou(2012)).to eq [345, "北北西", "北北西", "NNW", "North-northwest"]
    expect(get_ehou(2013)).to eq [165, "南南東", "南南東", "SSE", "South-southeast"]
    expect(get_ehou(2014)).to eq [ 75, "東北東", "東北東", "ENE", "East-northeast"]
    expect(get_ehou(2015)).to eq [255, "西南西", "西南西", "WSW", "West-southwest"]
    expect(get_ehou(2016)).to eq [165, "南南東", "南南東", "SSE", "South-southeast"]
    expect(get_ehou(2017)).to eq [345, "北北西", "北北西", "NNW", "North-northwest"]
    expect(get_ehou(2018)).to eq [165, "南南東", "南南東", "SSE", "South-southeast"]
    expect(get_ehou(2019)).to eq [ 75, "東北東", "東北東", "ENE", "East-northeast"]
  end
end
