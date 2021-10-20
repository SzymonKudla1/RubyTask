trainees = [
  ["John", "Smith", "john.s@example.com", "1980-01-10"],
  ["Davis", "Miller", "davis.m@example.com", "1985-07-02"],
  ["Nicole", "White", "nicole.w@example.com", "1977-08-22"],
  ["Marc", "Rock", "marc.r@example.com", "1972-04-25"],
  ["Wiliam", "Johnson", "wiliam.j@example.com", "1982-05-11"],
  ["Mary", "Moore", "mary.m@example.com", "1990-07-04"],
  ["Patricia", "Dawson", "patricia.d@example.com", "1980-05-01"],
]

courses = [
  "Ruby on rails basic",
  "Golang basics",
  "Devops & system administration",
  "Project management",
  "UI & UX",
  "SQL & databases"
]

TraineeCourse.delete_all
Trainee.delete_all
Course.delete_all


trainees.each_with_index do |values, index|
  trainee = Trainee.create! first_name: values[0], last_name: values[1], email: values[2], birthdate: values[3], active: index % 3 != 0
  if index % 2 == 0
    courses.take(index).each do |course_title|
      course = Course.where(title: course_title).first_or_create!
      trainee.courses << course
    end
  end
end