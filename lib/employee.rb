class Employee < ActiveRecord::Base
  validates_associated :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  # before_create do
  #   self.password = generate_password
  before_save do
    self.password = generate_password
  end

  private

  def generate_password
    rand(36 ** 8).to_s(36)
  end
end
