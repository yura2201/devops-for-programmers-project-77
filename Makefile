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
app-deploy:
	ansible-playbook ansible/playbook.yml -i ansible/inventory.yml -vvv -u yurait6 --vault-password-file ~/.local/bin/ansible-vault-data/vault-pass.txt
app-setup:
	ansible-galaxy install -r ./ansible/requirements.yml
	ansible-playbook ansible/setup.yml -i ansible/inventory.yml -vv -u yurait6 --vault-password-file ~/.local/bin/ansible-vault-data/vault-pass.txt



