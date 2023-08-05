
function validate()
{
	if(document.StudentRegistration.name.value == "" )
	{
		alert( "Please provide your Name!" );
		document.StudentRegistration.name.focus() ;
		return false;
	}

	if(document.StudentRegistration.address.value == "" )
	{
		alert( "Please provide your address!" );
		document.StudentRegistration.address.focus() ;
		return false;
	}

	if ( ( StudentRegistration.gender[0].checked == false ) && ( StudentRegistration.gender[1].checked == false ) )
	{
		alert ( "Please choose your Gender: Male or Female" );
		return false;
	} 

	if( document.StudentRegistration.course.value == "-1" )
	{
		alert( "Please select course!" );

		return false;
	} 

		var email = document.StudentRegistration.emailid.value;
		atpos = email.indexOf("@");
		dotpos = email.lastIndexOf(".");
			if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
				{
					alert("Please enter correct email ID")
					document.StudentRegistration.emailid.focus() ;
					return false;
				}


		if( document.StudentRegistration.phoneNumber.value == "" ||
		isNaN( document.StudentRegistration.phoneNumber.value) ||
		document.StudentRegistration.phoneNumber.value.length != 10 )
			{
				alert( "Please provide a Mobile No in the format 123." );
				document.StudentRegistration.phoneNumber.focus() ;
				return false;
			}
	alert("The form was submitted")
	return (true);
}

