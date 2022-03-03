class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physicians, through: :appointments

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}

end
