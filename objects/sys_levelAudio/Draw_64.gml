/// @description debug stuff


//draw_text_color(20, 120, audio_sound_get_track_position(mainTrack), c_white, c_white, c_white, c_white, 1);
draw_text_color(20, 160, string(sys_levelManager.Ptime), c_white, c_white, c_white, c_white, 1);
for(var i = 0; i<10; i++){
	draw_text_color(20, 200+(i*20), string(trackList[i]), c_white, c_white, c_white, c_white, 1);
}
draw_text_color(20, 180, "main: " + string(mainTrack), c_white, c_white, c_white, c_white, 1);