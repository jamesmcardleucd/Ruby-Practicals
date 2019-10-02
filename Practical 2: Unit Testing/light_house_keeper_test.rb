require 'test/unit'
require_relative 'light_house.rb'
require_relative 'light_house_keeper.rb'

class LightHouseKeeperTest < Test::Unit::TestCase

  def setup
    @light_house_keeper = LightHouseKeeper.new
  end

  def test_initialize
    assert_equal(:awake, @light_house_keeper.status, \
                              'status should be awake')
    assert_equal(0, @light_house_keeper.days_on_duty, \
                             'days on duty should be 0')
  end

  def test_restart_duty
    @light_house_keeper.restart_duty
    assert_equal(0, @light_house_keeper.days_on_duty, \
                  'days on duty should be restarted to 0')
  end

  def test_is_dawn
    @light_house_keeper.is_dawn
    assert_equal(:awake, @light_house_keeper.status, \
                              'status should be awake')
    assert_equal(1, @light_house_keeper.days_on_duty, \
                             'days on duty should be 1')
    assert_equal(:on, @light_house_keeper.lighthouse.on_or_off, \
                       'lighthouse should be on')
  end

  def test_is_dusk
    @light_house_keeper.is_dusk
    assert_equal(:off, @light_house_keeper.lighthouse.press_button, \
                 'lighthouse should be off')
    assert_not_equal(:awake, @light_house_keeper.status, \
                     'status should be asleep')
  end

end