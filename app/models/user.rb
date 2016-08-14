class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts, foreign_key: "owner"

  has_many :sent_messages, foreign_key: "sender", class_name: :Message
  has_many :received_messages, foreign_key: "receiver", class_name: :Message

  def messages
    Message.where("sender = ? OR receiver = ?", self.id, self.id)
  end

end
