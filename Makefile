.PHONY: apply destroy fmt init plan

terraform = docker-compose run --rm terraform

apply:
	@$(terraform) apply

fmt:
	@$(terraform) fmt

init:
	@$(terraform) init

plan:
	@$(terraform) plan
