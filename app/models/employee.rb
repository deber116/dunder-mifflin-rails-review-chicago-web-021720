class Employee < ApplicationRecord
    belongs_to :dog
    # Good validations here, and good associations here and in Dog.rb
    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    # You can also call these getter methods without the 'self dot'. Not required, just possible. 
    def to_s
        self.first_name + " " + self.last_name
    end
end
