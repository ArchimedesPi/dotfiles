add-ssh-keys () {
	keys=(~/.ssh/id_rsa) 
	for key in $keys
	do
		ssh-add $key
	done
}
