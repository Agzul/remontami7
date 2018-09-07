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
