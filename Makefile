all:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake db:drop || true
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production
	rails s

compile:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake db:drop || true
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production

assets:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake assets:precompile RAILS_ENV=production

heroku_compile:
	heroku run rake db:migrate VERSION=0
	heroku run rake db:migrate
	heroku run rake db:seed

m = "default"
git:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake db:drop || true
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production
	git add .
	git commit -m "$m"
	git push origin master
	git push heroku master

github:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake db:drop || true
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production
	git add .
	git commit -m "$m"
	git push origin master

heroku:
	rm -r public/assets/* || true
	rm -r public/system/* || true
	rake db:drop || true
	rake db:create
	rake db:migrate
	rake db:seed
	rake assets:precompile RAILS_ENV=production
	git add .
	git commit -m "$m"
	git push heroku master

git_push:
	git add .
	git commit -m "$m"
	git push origin master
	git push heroku master
