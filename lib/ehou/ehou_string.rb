# coding: utf-8

module Ehou
  class EhouString < String
    attr_reader :angle

    EHOUS = {
      0 => {angle: 255, str:"西南西"},
      1 => {angle: 165, str:"南南東"},
      2 => {angle: 345, str:"北北西"},
      3 => {angle: 165, str:"南南東"},
      4 => {angle:  75, str:"東北東"},
      5 => {angle: 255, str:"西南西"},
      6 => {angle: 165, str:"南南東"},
      7 => {angle: 345, str:"北北西"},
      8 => {angle: 165, str:"南南東"},
      9 => {angle:  75, str:"東北東"}
    }

    def initialize(year)
      y = year % 10
      ehou = EHOUS[y]
      @angle = ehou[:angle]
      super(ehou[:str])
    end
  end
end
