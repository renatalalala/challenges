class Event < ActiveRecord::Base
	validates :organizer_name, :presence => true 
	validates :title, :uniqueness => true
	validates :title, :presence => true 
	validates :organizer_email, :format => { :with => /\w+@\w+.(\w{3}|\w{2})/, :message => "Please enter valid email address"}
    validates :date, :presence => true
    validate :valid_date

    def valid_date
    	if date.present? && date < Date.today
    		errors.add(:date, "Please add date that is in the future")
    	end
    end
end
