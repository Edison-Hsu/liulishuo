class Contact < ApplicationRecord
  acts_as_paranoid

  belongs_to :user, foreign_key: :contacter
end
