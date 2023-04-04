class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :at_least_in_one_apparel

  def at_least_in_one_apparel
    errors.add(:at_least_in_one_apparel, 'has to be in appareal department') unless  mens_apparel.present? || womens_apparel.present? 
    # if mens_apparel.present? || womens_apparel.present? 
    #   true
    # else
    #   errors.add(:at_least_in_one_apparel, 'has to be in appareal department')
    # end
  end
end

