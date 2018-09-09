all:
	rake db:drop
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production
	rails s

compile:
	rake db:drop
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production

assets:
	rm -r public/assets/*
	rake assets:precompile RAILS_ENV=production

run:
	rails s

m = "default"
git:
	git add .
	git commit -m "$m"
	git push origin master
	git push heroku master

github:
	git add .
	git commit -m "$m"
	git push origin master

heroku:
	git add .
	git commit -m "$m"
	git push heroku master
