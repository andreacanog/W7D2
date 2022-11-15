# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, :presence: true, uniqueness: true 
    validates :password, length: { minimum: 6 }, allow_nil: true 

    def find_by_credentials(email, password)
    end

    def password=(password)
    end

    def reset_session_token!
    end

    def ensure_session_token
    end

    def is_password?(password)
    end

    private 

    def generate_unique_session_token
    end
end
