/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i<10; i++){
	if audio_exists(trackList[i]){
		audio_destroy_stream(trackList[i]);
	}
}