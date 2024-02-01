tr-init:
	terraform -chdir=./terraform/ init -backend-config=secrets.backend.tfvars
tr-reconfigure:
	terraform -chdir=./terraform/ init -reconfigure -backend-config=secrets.backend.tfvars
tr-apply:
	terraform -chdir=./terraform/ apply
tr-destroy:
	terraform -chdir=./terraform/ destroy
tr-plan:
	terraform -chdir=./terraform/ plan
tr-format:
	terraform -chdir=./terraform/ fmt
tr-validate:
	terraform -chdir=./terraform/ validate



