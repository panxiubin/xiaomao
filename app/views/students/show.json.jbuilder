json.student do
  json.(@student, :name)
end

json.courses do
  json.array! @student.my_courses.each do |course|
    json.(course, :name)
    json.teacher course.teacher.name
  end
end
