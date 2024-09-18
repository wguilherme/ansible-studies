.DEFAULT_GOAL := playbook

.PHONY: playbook
playbook:
	@ansible-playbook -i $(inventory) $(playbook)
