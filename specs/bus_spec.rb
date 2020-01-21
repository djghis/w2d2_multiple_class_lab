require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')
class BusTest < Minitest::Test

  def setup()
    @bus = Bus.new("22", "Ocean Terminal")
    @passenger1 = Person.new("alan", 20)
    @passenger2 = Person.new("GG", 38)
    @bus_stop1 = BusStop.new("Bus stop 1")
  end

  def test_bus_noise()
    assert_equal("Brum Brum", @bus.bus_noise)
  end

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_pick_up()
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.count_passengers())
  end

  def test_drop_off()
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger2)
    assert_equal(0, @bus.count_passengers())
  end

  def test_empty_bus()
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty_bus()
    assert_equal(0, @bus.count_passengers())
  end

  def test_pick_up_from_stop()
    @bus_stop1.add_person_to_queue(@passenger1)
    @bus_stop1.add_person_to_queue(@passenger2)
assert_equal(2, @bus.count_passengers)
assert_equal(0, @bus_stop1.queue_count())


  end
end
