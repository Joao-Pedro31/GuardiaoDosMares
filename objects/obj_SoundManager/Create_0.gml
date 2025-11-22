/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

volume_musica = 1;
volume_sfx = 1;

tocar_sfx = true;
tocar_musica = true;

_musicaAtual = -1;

setVolumeMusica = function(vol) {
	volume_musica = clamp(vol, 0, 1);
}

setVolumeSfx = function(vol) {
	volume_sfx = clamp(vol, 0, 1);
}

setTocarMusica = function(tocar) {
	tocar_musica = tocar;
	
	if (audio_is_playing(_musicaAtual) && !tocar)
		audio_pause_sound(_musicaAtual)
	
	if (audio_is_paused(_musicaAtual) && tocar)
		audio_resume_sound(_musicaAtual)
		
}

setTocarSfx = function(tocar) {
	tocar_sfx = tocar;
}

tocarMusica = function(musica_asset) {
	if (!tocar_musica)
		return;
		
	if (audio_is_playing(_musicaAtual))
		audio_stop_sound(_musicaAtual)
		
	_musicaAtual = audio_play_sound(musica_asset, 1, true, volume_musica);
}

tocarSfx = function(sfx_asset) {
	if (!tocar_sfx)
		return;
		
	audio_play_sound(sfx_asset, 10, false, volume_sfx);
}

