class Teacher < ApplicationRecord
  has_many :courses
  has_many :st_relations
end
