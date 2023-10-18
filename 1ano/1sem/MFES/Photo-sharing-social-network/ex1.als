sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}
// Specify the following properties.
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true.

pred inv1 {
	// Every image is posted by one user.
	all p : Photo | one posts.p
}
 

pred inv2 {
	// Users cannot follow themselves.
	all u : User | no u & u.follows
}


pred inv3 {
	// Users can see ads posted by everyone, 
	// but only see non ads posted by followed users.
   all u : User | (u.sees & Ad) in User.posts and (u.sees & (Photo-Ad)) in u.follows.posts 
}


pred inv4 {
	// If a user posts an ad then all its posts should be labeled as ads. 
	all u : User | some u.posts & Ad implies all p : u.posts | p in Ad
}


pred inv5 {
	// Influencers are followed by everyone else.
	all i : Influencer, u : User-i | i in u.follows
}


pred inv6 {
	// Influencers post every day.
	all d : Day, i : Influencer | some i.posts & date.d 
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed.
	all u1 : User | let u2 = u1.follows.follows | u1.suggested = u2 - u1 - u1.follows  	
}


pred inv8 {
	// A user only sees ads from followed or suggested users.
  	all u : User | u.sees & Ad in (u.follows.posts + u.suggested.posts) 

}