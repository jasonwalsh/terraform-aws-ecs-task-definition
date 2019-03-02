.PHONY: all apply destroy fmt init plan

options = -it --rm -v $(shell pwd):/terraform -w /terraform
repository = quay.io/jasonwalsh/terraform
tag = v0.12.0-beta1
terraform = docker run $(options) $(repository):$(tag)

all: fmt apply

apply:
	@$(terraform) apply

fmt:
	@$(terraform) fmt

init:
	@$(terraform) init

plan:
	@$(terraform) plan
