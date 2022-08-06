class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :omni_auth_services, dependent: :destroy
  has_one :account, dependent: :destroy
  acts_as_tenant(:account)
  before_validation :set_account

  def set_account
    self.build_account
  end

end
