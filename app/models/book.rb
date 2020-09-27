class Book < ApplicationRecord  # class Book < ActiveRecord::Base in ROR 4
    validates :title, :author, :price, :stock_quantity, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :stock_quantity, numericality: {only_integer: true}
end
