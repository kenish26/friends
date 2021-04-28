class ApplicationRecord < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name,presence: true
	validates :first_name, length: { minimum: 2 }
	validates :last_name, length: { minimum: 2 }
	validates :first_name, presence: true
	validates :last_name,presence: true
	validates :email,presence:true
    validates :phone, length: { is: 10 }
    validates :phone, numericality: { only_integer: true }
    validates :email, format: { with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }

	
  self.abstract_class = true
end
