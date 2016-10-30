class Teacher < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :st_relations
end
