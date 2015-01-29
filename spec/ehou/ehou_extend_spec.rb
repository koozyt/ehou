# coding: utf-8
require 'spec_helper'
require 'active_support/time'

describe Ehou::EhouExtend do
  describe Date do
    it 'should return ehou string' do
      expect(Date.new(2014).ehou).to eq "東北東"
      expect(Date.new(2015).ehou).to eq "西南西"
    end

    it 'should return ehou angle' do
      expect(Date.new(2014).ehou.angle).to eq 75
      expect(Date.new(2015).ehou.angle).to eq 255
    end

    it 'should return same object when calling twice' do
      d = Date.new(2014)
      last = d.ehou
      expect(d.ehou.object_id).to eq last.object_id
    end
  end

  describe Time do
    it 'should return ehou string' do
      expect(Time.local(2014).ehou).to eq "東北東"
      expect(Time.local(2015).ehou).to eq "西南西"
    end

    it 'should return ehou angle' do
      expect(Time.local(2014).ehou.angle).to eq 75
      expect(Time.local(2015).ehou.angle).to eq 255
    end

    it 'should return same object when calling twice' do
      d = Time.local(2014)
      last = d.ehou
      expect(d.ehou.object_id).to eq last.object_id
    end
  end

  describe ActiveSupport::TimeWithZone do
    it 'should work using ActiveSupport::TimeWithZone' do
      Time.zone = 'Asia/Tokyo'
      expect(Time.zone.local(2014).ehou).to eq "東北東"
      expect(Time.zone.local(2014).ehou.angle).to eq 75
      expect(Time.zone.local(2015).ehou).to eq "西南西"
      expect(Time.zone.local(2015).ehou.angle).to eq 255
    end
  end
end
