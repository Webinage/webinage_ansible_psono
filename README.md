There might be a problem with unmet dependencies when reinstalling from scratch
python3.9 is required on the ansible controller (ubuntu 16 defaults to 3.5)
You gotta have the controller upgraded from its base version which is a pain in the ***
Be sure the client machine has python-apt and python-docker installed
There might be some other trouble

After filling all the group_vars to configure you can use this command to install from scratch:
`ansible-playbook -i inventory.ini install_all.yml --ask-vault-pass`

You can use this command to update your running version of psono
`ansible-playbook -i inventory.ini install_all.yml --ask-vault-pass --tags all --tags update`