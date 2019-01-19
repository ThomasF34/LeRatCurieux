class User < ApplicationRecord
  validates :name, :lname, :email, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "saisie n'est pas valide" }

end
