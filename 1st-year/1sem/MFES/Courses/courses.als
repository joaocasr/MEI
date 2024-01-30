open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor, Student in Person {}

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

	// all p : Person | (some c : Course | p->c in enrolled) implies p in Student

	// all p : Person | (some p.enrolled) implies p in Student

    //enrolled in Student -> Course
    all p : Person | (some p.enrolled) implies p in Student 
}


pred inv2 {
	// Only professors can teach courses
	
	// all p : Person | (some p.teaches) implies p in Professor

    //teaches in Professor -> Course
    all p : Person | some (p.teaches) implies p in Professor
}


pred inv3 {
	// Courses must have teachers

	// all c : Course | some p : Person | p->c in teaches 

	//all c : Course | some teaches.c

	//teaches in Person some -> Course

    all c : Course | some teaches.c
}   


pred inv4 {
	// Projects are proposed by one course

        // all p : Project | one c : Course | c->p in projects

	//all p : Project | one (Course <: projects).p

    all p : Project | one c : Course | c-> p in projects

}


pred inv5 {
	// Only students work on projects and 
	// projects must have someone working on them

	// all p : Person | (some pr : Project | p->pr in projects) implies p in Student 

	// all p : Person | (some p.projects) implies p in Student 

	// all pr : Project | all p : Person | p->pr in projects implies p in Student 
  
	// all pr : Project | all p : Person | p in projects.pr implies p in Student 

	all pr : Project | (Person <: projects).pr in Student


	// all pr : Project | some p : Person | p->pr in projects

	all pr : Project | some (Person <: projects).pr
    all p : Person | ( some pr : Project | p -> pr in projects ) implies p in Student
}


pred inv6 {
	// Students only work on projects of courses they are enrolled in

	// all s : Student | all c : Course | (some pr : Project | c->pr in projects) implies s->c in enrolled

	// all s : Student | all c : Course | (some c.projects) implies s->c in enrolled

        // all s : Student | all c : Course | all pr : Project | 
	//   c->pr in projects implies s->c in enrolled

        // all s : Student | all c : Course | all pr : Project | 
	//   c in projects.pr implies c in s.enrolled

        // all s : Student | all pr : Project | (Course <: projects).pr in s.enrolled

        // all s : Student | all pr : Project | pr in s.projects implies pr in s.enrolled.projects

        all s : Student | s.projects in s.enrolled.projects
}


pred inv7 {
	// Students work on at most one project per course

        // all s : Student | all c : Course | lone pr : Project | c->pr in projects and s->pr in projects

        // all s : Student | all c : Course | lone pr : Project | pr in c.projects and pr in s.projects

        // all s : Student | all c : Course | lone pr : Project | pr in (c.projects & s.projects)

        all s : Student, c : Course | lone (c.projects & s.projects)
}


pred inv8 {
	// A professor cannot teach herself

	// all p : Professor | all c : Course |
	//  not (p->c in teaches and p->c in enrolled)

	// all p : Professor | all c : Course | not (p->c in teaches & enrolled)
 
	no teaches & enrolled

	// all p : Professor | no (p.teaches & p.enrolled)

	// all c : Course | no (teaches.c & enrolled.c)

}


pred inv9 { 
	// A professor cannot teach colleagues

	// all p1, p2 : Professor | all c1, c2 : Course |
	//   not (p1->c1 in teaches and p2->c1 in teaches and p1->c2 in teaches and p2->c2 in enrolled)

	// all p1, p2 : Professor | 
	//   (some c1 : Course | p1->c1 in teaches and p2->c1 in teaches)
	//    implies
	//    no c2: Course | p1->c2 in teaches and p2->c2 in enrolled

	// all p1, p2 : Professor | 
	//   (some c1 : Course | c1 in p1.teaches and c1 in p2.teaches)
	//    implies
	//    no c2: Course | c2 in p1.teaches and c2 in p2.enrolled

	// all p1, p2 : Professor | 
	//   (some p1.teaches & p2.teaches)
	//    implies
	//   (no p1.teaches & p2.enrolled)

	// all p1 : Professor, p2 : teaches.(p1.teaches) | 
	//   (no p1.teaches & p2.enrolled)

	// all p1 : Professor, p2 : enrolled.(p1.teaches) | 
	//   (no p1.teaches & p2.teaches)

	// all p1 : Professor | no p2 : Professor | p2 in teaches.(p1.teaches) and p2 in enrolled.(p1.teaches)

	all p : Professor | no teaches.(p.teaches) & enrolled.(p.teaches)


	// all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
}


pred inv10 {
	// Only students have grades

	// all c : Course | all p : Person | all g : Grade |
	//  c->p->g in grades implies p in Student

	// all c : Course | all p : Person | all g : Grade |
	//   p in c.grades.g implies p in Student

	// all c : Course | all g : Grade | c.grades.g in Student

	Course.grades.Grade in Student
}


pred inv11 {
	// Students only have grades in courses they are enrolled

	// all s : Student | all c : Course | all g : Grade |
	//  c->s->g in grades implies s->c in enrolled

	// all c : Course | all g : Grade | all s : Student |
	//   s in c.grades.g implies s in enrolled.c

	// all c : Course | all g : Grade | c.grades.g in enrolled.c

	all c : Course | c.grades.Grade in enrolled.c

	// WRONG! This means
	// "students that have a grade in some course are enrolled in some course"
	Course.grades.Grade in enrolled.Course
}


pred inv12 {
	// Students have at most one grade per course
	// all s : Student | all c : Course |
	//   lone g : Grade | c->s->g in grades

	all s : Student, c : Course | lone s.(c.grades)

	// WRONG! This means
	// "There is at most one grade for the entire set of students and courses"
	// lone Student.(Course.grades)
}


pred inv13 {
	// A student with the highest mark in a course must have worked on a project on that course

	// all c : Course, p : Person | last in p.(c.grades) implies
	//   some pr :Project | p->pr in projects and c->pr in projects

	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects

}


pred inv14 {
	// A student cannot work with the same student in different projects

        // all s1, s2 : Student | all pr1, pr2 : Project |
	//   s1!=s2 and 
	//   s1->pr1 in projects and s2->pr1 in projects and s1->pr2 in projects and s2->pr2 in projects
	//   implies pr1 = pr2
	
        // all disj s1, s2 : Student | all pr1, pr2 : Project |
	//   s1->pr1 in projects and s2->pr1 in projects and s1->pr2 in projects and s2->pr2 in projects
	//   implies pr1 = pr2
	  
	// all disj s1, s2 : Student | lone pr : Project | s1->pr in projects and s2->pr in projects 

        // all disj s1, s2 : Student | lone pr : Project | pr in s1.projects and pr in s2.projects

        // all disj s1, s2 : Student | lone pr : Project | pr in s1.projects & s2.projects

        all disj s1, s2 : Student | lone s1.projects & s2.projects


	// all p : Person, disj x,y : p.projects | no ((Person <: projects).x & projects.y) - p

}


pred inv15 {
	// Students working on the same project in a course cannot have marks differing by more than one unit

	// all c : Course, pr : Project, disj x,y : Student, g1, g2 : Grade |
	//   c->pr in projects and x->pr in projects and y->pr in projects and
	//   c->x->g1 in grades and c->y->g2 in grades implies g1 in g2.(prev+iden+next)

	// all c : Course, pr : Project, disj x,y : Student, g1, g2 : Grade |
	//   c->pr in projects and pr in (x.projects & y.projects) and
	//   c->x->g1 in grades and c->y->g2 in grades implies g1 in g2.(prev+iden+next)

	// all c : Course, disj x,y : Student, g1, g2 : Grade |
	//   (some pr : Project | c->pr in projects and pr in (x.projects & y.projects)) and
	//   c->x->g1 in grades and c->y->g2 in grades implies g1 in g2.(prev+iden+next)

	// all c : Course, disj x,y : Student, g1, g2 : Grade |
	//   (some c.projects & x.projects & y.projects) and
	//   c->x->g1 in grades and c->y->g2 in grades implies g1 in g2.(prev+iden+next)

	all c : Course, disj x,y : Student, g1 : x.(c.grades), g2 : y.(c.grades) |
	  (some c.projects & x.projects & y.projects) implies g1 in g2.(prev+iden+next)


	// all c : Course, p : c.projects, disj x,y : (Person <: projects).p |
	//  some x.(c.grades) and some y.(c.grades) implies x.(c.grades) in y.(c.grades).(prev+iden+next)

	// all c : Course, p : c.projects, disj x,y : (Person <: projects).p |
	//  some c.grades[x] and some c.grades[y] implies c.grades[x] in c.grades[y].(prev+iden+next)
}