class Student < ApplicationRecord
  has_many :sc_relations
  has_many :my_courses, through: :sc_relations, source: :course

  has_many :st_relations
  has_many :my_teachers, through: :st_relations, source: :teacher
end
