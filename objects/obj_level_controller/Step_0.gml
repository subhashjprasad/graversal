/// @desc Determine coin numbers and update sprites

if ((room != rm_level_select) && (room != rm_main_menu))
{
	var coins = global.coins;
	thousands = 0;
	hundreds = 0;
	tens = 0;
	ones = 0;

	while (coins - 1000 >= 0)
	{
		coins -= 1000;
		thousands += 1;
	}
	
	while (coins - 100 >= 0)
	{
		coins -= 100;
		hundreds += 1;
	}

	while (coins - 10 >= 0)
	{
		coins -= 10;
		tens += 1;
	}

	while (coins - 1 >= 0)
	{
		coins -= 1;
		ones += 1;
	}
}

if (starting > 0)
{
	starting -= 0.01;
}