class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts, foreign_key: "owner"

  has_many :sent_messages, foreign_key: "sender_id", class_name: :Message
  has_many :received_messages, foreign_key: "receiver_id", class_name: :Message

  def messages(contact_id)
    Message.where("sender_id = ? AND receiver_id = ? OR sender_id = ? AND receiver_id = ?", self.id, contact_id, contact_id, self.id)
  end

end
