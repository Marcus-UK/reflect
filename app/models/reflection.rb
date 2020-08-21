class Reflection < ApplicationRecord
    has_many :thoughts
    validates :title, presence: true,
                    length: { minimum: 5 }
end
