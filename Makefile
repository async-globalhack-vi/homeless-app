.PHONY: clean db start

default: clean db start

db: clean
	@echo "seeding db..."
	@bundle exec rake db:drop
	@bundle exec rake db:create:all
	@bundle exec rake db:migrate
	@bundle exec rake db:seed

start:
	@echo "starting app..."
	@bundle exec rails server

console:
	@echo "starting console..."
	@bundle exec rails console

clean:
	@echo "cleaning..."

