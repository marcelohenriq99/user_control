# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Model structure

User_model
	L name
	L devise_params
		L email
		Lpassword_digest(bcrypted)
	L office
	L super_user

UserProfile_model
	L user_id : references
	L description
	
AccessKind
	L description

UserProfileAccess
	L user_profile_id : references
	L object_access : collection of pages(models) with access
	L access_kind_id : references