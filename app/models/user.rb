class User < ApplicationRecord

  before_validation :set_name, on: :create
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  validates :name, presence: true, length: {maximum: 35}

  private

    def set_name
      self.name = "Пользователь №#{rand(777)}" if self.name.blank?
    end
end
