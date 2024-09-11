include .env
export

.PHONY: make

make: 
	@ansible-playbook -i '$(RASPBERRY_PI_IP),' setup.yml -e "ansible_user=$(RASPBERRY_PI_USER) ansible_ssh_pass=$(RASPBERRY_PI_PASSWORD)"

ping:
	@ansible all -i '$(RASPBERRY_PI_IP),' -m ping -e "ansible_user=$(RASPBERRY_PI_USER) ansible_ssh_pass=$(RASPBERRY_PI_PASSWORD)"