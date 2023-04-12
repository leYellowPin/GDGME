/// @description Insert description here
// You can write your code in this editor

if mainTrack == undefined exit;

if p_ and global.pause{
	audio_stop_sound(mainTrack);
	audio_sound_set_track_position(mainTrack, (sys_levelManager.Ptime));
	p_ = false;
}else
if p_ and !global.pause{
	audio_play_sound(mainTrack, 1, 0);
	audio_sound_set_track_position(mainTrack, (sys_levelManager.Ptime));
	p_ = false;
}