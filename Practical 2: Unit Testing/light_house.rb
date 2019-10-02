
class LightHouse

  def initialize
    @light = :off
  end

  def press_button
    @light = @light == :off ? :on : :off
  end

  def on_or_off
    @light
  end

end
