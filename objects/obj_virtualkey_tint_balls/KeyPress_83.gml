/// @desc Go to level select screen

if (clickable == true)
{
	room_goto(rm_store);
	audio_play_sound(snd_button_click, 0, false);
}
