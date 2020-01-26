professors <- read.csv("~/Documents/data_course/projects/professors.csv")
students <- read.csv("~/Documents/data_course/projects/students.csv")

library(dplyr)

student_grouped_by_question <- group_by(students, X)
  student_answers_per_question <- mutate(student_grouped_by_question, answers = sum(Totally.Disagree, Totally.agree, Agree, Disagree))
  total_answers_students <- sum(student_answers_per_question["answers"])

  deviation_professor <- sd(as.double(student_answers_per_question["answers"])
