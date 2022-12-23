class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # In our JWT payload, we're including the id of the user, and setting the expiration time of the token to 60 days in the future. We're using the secret_key_base that rails usually uses for cookies to sign our JWT tokens.
  def generate_jwt
    JWT.encode({ id: id,
                exp: 60.days.from_now.to_i },
              Rails.application.secrets.secret_key_base)
  end
end
