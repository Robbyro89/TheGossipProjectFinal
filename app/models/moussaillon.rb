class Moussaillon < ApplicationRecord
  attr_accessor :sign_in_count
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_many :gossips
    validates :sign_in_count, on: :create, presence: true, inclusion: { in: ["GossipV2"]}
  end
