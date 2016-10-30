json.teachers do
  json.array! @teachers.each do |teacher|
    json.(teacher, :name)

    json.courses do
      json.array! teacher.courses.each do |course|
        json.(course, :name)
      end
    end

  end
end
