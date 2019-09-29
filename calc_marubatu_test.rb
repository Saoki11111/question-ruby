# frozen_string_literal: true

require 'minitest/autorun'
require './calc_marubatu'

class CalcTest < Minitest::Test
  def test_calc_marubatu
    assert Calc.new
  end
end
