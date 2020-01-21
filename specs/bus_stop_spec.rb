require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus_stop')
require_relative('../person')
require_relative('../bus')
class BusStopTest < Minitest::Test

  def setup()
    @bus = Bus.new("22", "Ocean Terminal")
    @passenger1 = Person.new("alan", 20)
    @passenger2 = Person.new("GG", 38)
    @bus_stop1 = BusStop.new("Bus stop 1")
  end

  def test_queue_count
    assert_equal(0, @bus_stop1.queue_count)
  end

def test_add_person_to_queue()
  @bus_stop1.add_person_to_queue(@passenger1)
  assert_equal(1, @bus_stop1.queue_count())

end



end
