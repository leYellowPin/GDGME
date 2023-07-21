/// @description Insert description here
// You can write your code in this editor

if mainTrack != undefined and sys_levelManager.mode == 0{

	if global.pause{
		if audio_is_playing(mainTrack){
			if sys_levelManager.mode == 0 {audio_sound_set_track_position(mainTrack, (sys_levelManager.Ptime));}
			audio_stop_sound(mainTrack);
		}
		//p_ = false;
	}else
	if !global.pause{
		if !audio_is_playing(mainTrack){
			if sys_levelManager.mode == 0{audio_sound_set_track_position(mainTrack, (sys_levelManager.Ptime));}
			audio_play_sound(mainTrack, 1, 0);
		}
		//p_ = false;
	}
	
}
if mainTrack != undefined and sys_levelManager.mode != 0{
	if audio_is_playing(mainTrack){
		audio_stop_sound(mainTrack);	
	}
}


/*
if keyboard_check_pressed(vk_down){
	mainTrack = trackList[0];
}
*/

if keyboard_check_pressed(vk_up){
	var _trackName = get_open_filename_ext("track|*.ogg", "", working_directory, "Add an audio track");

	if _trackName != ""{
		/*
		for(var i = 0; i<10; i++){
			if trackList[i] == 0{
				trackList[i] = audio_create_stream(_trackName);
				break;
			}
		}
		*/
		mainTrack = audio_create_stream(_trackName);
		//var _snd = audio_create_stream(_trackName);
		//audio_play_sound(_snd, 1, 0);
	}
}