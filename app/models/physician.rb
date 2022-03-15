class Physician < ActiveRecord::Base
    has_many :appointments 
    has_many :patients, through: :appointments

    validates :name, presence: true
    validates :title, presence: true, inclusion: {in: ["M.D.", "Ph.D."], message: "%{value} is not valid."}
    validates :age, presence: true, numericality: {greater_than: 23}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :phone, presence: true, uniqueness: true, format: {with: /\A([\+]?\d{1,2})?[\s.-]?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/}
    validates :experience, presence: true
end