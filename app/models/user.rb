class User < ApplicationRecord
  has_many :users_groups
  has_many :groups, through: :users_groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:player) if self.roles.blank?
  end


end
