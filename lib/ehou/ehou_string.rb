# coding: utf-8

module Ehou
  class EhouString < String
    EHOU_ENE = {angle:  75, shorten:"ENE", ja:"東北東", en:"East-northeast"}
    EHOU_SSE = {angle: 165, shorten:"SSE", ja:"南南東", en:"South-southeast"}
    EHOU_WSW = {angle: 255, shorten:"WSW", ja:"西南西", en:"West-southwest"}
    EHOU_NNW = {angle: 345, shorten:"NNW", ja:"北北西", en:"North-northwest"}
    EHOUS = {
      0 => EHOU_WSW,
      1 => EHOU_SSE,
      2 => EHOU_NNW,
      3 => EHOU_SSE,
      4 => EHOU_ENE,
      5 => EHOU_WSW,
      6 => EHOU_SSE,
      7 => EHOU_NNW,
      8 => EHOU_SSE,
      9 => EHOU_ENE
    }

    def initialize(year)
      y = year % 10
      @ehou = EHOUS[y]
      super(@ehou[:ja])
    end

    def angle
      @ehou[:angle]
    end

    def shorten
      @ehou[:shorten]
    end

    def to_en
      @ehou[:en]
    end

    def to_ja
      self
    end
  end
end
