class Reflection < ApplicationRecord
    has_many :thoughts, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5 }
end
