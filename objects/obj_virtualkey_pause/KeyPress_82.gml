/// @desc Resume 

if (instance_exists(obj_virtualkey_resume))
{
	if (obj_virtualkey_resume.clickable == true)
	{
		if (global.paused == true)
		{
			obj_virtualkey_resume.clicked = true;
		}
	}
}

