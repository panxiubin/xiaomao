class Course < ApplicationRecord
  belongs_to :teacher
  has_many :sc_relations 
end
