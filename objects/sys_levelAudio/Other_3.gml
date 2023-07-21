/// @description Insert description here
// You can write your code in this editor
/*
for(var i = 0; i<10; i++){
	if audio_exists(trackList[i]){
		audio_destroy_stream(trackList[i]);
	}
}
*/
if variable_instance_exists(id, "mainTrack"){
	if mainTrack != undefined{
		if audio_exists(mainTrack){
			audio_destroy_stream(mainTrack);
		}
	}
}