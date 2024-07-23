class User < ApplicationRecord
    validates :user_name, presence: true
    validates :mail_address, presence: true, uniqueness: true
    validates :password, presence: true
    validates :check_password, presence: true
    validate :same_password?
    def same_password?
        if password != check_password
            errors.add(:password, 'が一致しません')
        end
    end
end
