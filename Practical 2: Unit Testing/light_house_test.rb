require 'test/unit'
require_relative 'light_house.rb'

class LightHouseTest < Test::Unit::TestCase

  def setup
    @light_house = LightHouse.new
  end

  def test_initialize
    assert_equal(:off, @light_house.on_or_off, \
                 'new lighthouse should be off')
  end

  def test_press_button
    assert_not_equal(:off, @light_house.press_button, \
                 'new lighthouse should be on')
  end

  def test_on_or_off
    assert_same(:off, @light_house.on_or_off, \
                 'new lighthouse should be off')
  end

end