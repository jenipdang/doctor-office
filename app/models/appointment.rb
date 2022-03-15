class Appointment < ActiveRecord::Base
    belongs_to :physician
    belongs_to :patient

    validates :date, presence: true
    validate :validate_future_date

    def validate_future_date
        if !self.date.present? || self.date < Date.today
            self.errors.add(:date, "Date must be in the future") #add errors manually on the object
        end
    end
    
end
