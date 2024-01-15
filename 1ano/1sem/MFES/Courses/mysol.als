open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}
// Specify the following properties.
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true.

pred inv1 {
	// Only students can be enrolled in courses
	all c : Course | enrolled.c in Student
}


pred inv2 {
	// Only professors can teach courses
	all c : Course | teaches.c in Professor

}


pred inv3 {
	// Courses must have teachers
    all c : Course | some (teaches.c & Professor)

}


pred inv4 {
	// Projects are proposed by one course
    all p : Project | one (Course <: projects).p

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them
    all p : Project | (Person <: projects).p in Student and some ((Person <: projects).p & Student)

}


pred inv6 {
	// Students only work on projects of courses they are enrolled in
    all pr : Project, s : Student | all c : (Course <: projects).pr | pr in s.projects implies c in s.enrolled

}

pred inv7 {
	// Students work on at most one project per course
    all c : Course, s : Student | lone s.projects & c.projects 

}
