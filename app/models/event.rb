class Event < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :start_time, presence: true
    validates :price, presence: true
    belongs_to :user
    
end
