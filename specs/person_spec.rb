require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# require_relative('../bus')
require_relative('../person')
class PersonTest < Minitest::Test



end
