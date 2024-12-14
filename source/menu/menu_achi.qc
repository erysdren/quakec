
void() Menu_Achievements =
{
	Menu_DrawBackground();

	Menu_DrawTitle("ACHIEVEMENTS");

	Menu_Button(-1, "am_back", "BACK", "Return to Main Menu.") ? current_menu = MENU_MAIN : 0;

	sui_pop_frame();
};

string menu_achievements_buttons[] = {
	"am_back"
};

string(string prev_id) Menu_Achievements_GetNextButton =
{
	if (prev_id == "")
		return menu_achievements_buttons[0];

	string ret = menu_achievements_buttons[0];

	for(float i = 0; i < menu_achievements_buttons.length; i++) {
		if (menu_achievements_buttons[i] == prev_id) {
			if (i + 1 >= menu_achievements_buttons.length)
				break;

			ret = menu_achievements_buttons[i + 1];
			break;
		}
	}

	return ret;
};

string(string next_id) Menu_Achievements_GetPreviousButton =
{
	if (next_id == "")
		return menu_achievements_buttons[menu_achievements_buttons.length - 1];

	string ret = menu_achievements_buttons[menu_achievements_buttons.length - 1];

	for(float i = menu_achievements_buttons.length - 1; i > 0; i--) {
		if (menu_achievements_buttons[i] == next_id) {
			if (i - 1 < 0)
				break;

			ret = menu_achievements_buttons[i - 1];
			break;
		}
	}

	return ret;
};
