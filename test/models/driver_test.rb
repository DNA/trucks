require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:cpf)
  should validate_presence_of(:truck_type)
  should validate_presence_of(:latitude)
  should validate_presence_of(:longitude)

  should validate_numericality_of(:latitude)
    .is_less_than_or_equal_to(90)
    .is_greater_than_or_equal_to(-90)

  should validate_numericality_of(:longitude)
    .is_less_than_or_equal_to(180)
    .is_greater_than_or_equal_to(-180)

end
