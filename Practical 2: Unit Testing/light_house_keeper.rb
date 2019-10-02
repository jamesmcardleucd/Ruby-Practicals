
require_relative 'light_house.rb'

class LightHouseKeeper
  
  attr_reader :days_on_duty, :status, :lighthouse
  
  def initialize
    @lighthouse = LightHouse.new
    @status = :awake
    @days_on_duty = 0
  end
  
  def restart_duty
    @days_on_duty = 0
  end
  
  def is_dawn
    wake_up
    @days_on_duty += 1
    @lighthouse.press_button
  end
  
  def is_dusk
    @lighthouse.press_button
    go_to_bed
  end
  
  private
  def wake_up
    @status = :awake
  end
  
  def go_to_bed
    @status = :asleep
  end

end