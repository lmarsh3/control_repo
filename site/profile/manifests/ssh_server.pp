class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDP1lTKMMUoDslT7lKy4mXUeL4GkQMHCcByByPvS+vNE/1b4lA7dlGhbg4aUQkFrQDSEDorgzpahn+aJEX8LpZXM9HjMjYXwxI3IjrysDdy+tVeKSoE0X0Wtb10SHQV26MgxN+mcH3deCUe6C1la0U8BHX9Sr33WCx+nuYzOkXbXqsrscFTp6ysDVOULaWg591N5MBafUazgaABrDJSylWRPTZofevCHs3ozxZ/Jyg/c01Akz2115VKNxRtWpltdlUc9dURGSFTgWmY2SGeJ9B5Q+yl+t5t//ILJcudm0lQwE9HvqAxDGSXWwSi/irvDnOzftj4hEQ+EDYl6+fWF33D',
	}  
}
