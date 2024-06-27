class User < ApplicationRecord
    has_secure_password
  
    # Validations
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }, if: :password_digest_changed?
  
    # Callbacks
    before_save :downcase_email
  
    private
  
    def downcase_email
      self.email = email.downcase
    end
  end