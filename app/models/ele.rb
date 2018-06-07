class Ele < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :created_events, class_name: "Event", dependent: :destroy
	has_and_belongs_to_many :attended_events, class_name: "Event"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
