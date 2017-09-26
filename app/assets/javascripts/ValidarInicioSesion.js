function (){
	var email, contraseña;

	email = document.getElementById('mail').value;
	contraseña = document.getElementById('password').value;
	expresion = /\w+@\w+\.+[a-z]/;

	if (email ==="" || contraseña ==="") {
		alert("Debe llenar todos los campos");
	}

	else if (email.length>50) {
		alert("correo demasiado largo");
		return false;	
	}


	else if (contraseña.length>20) {
		alert("contraseña demasiado largo");
		return false;
	}

	else if (!expresion.test(email)){
		alert("Digite un correo correcto");
		return false;
	}
}