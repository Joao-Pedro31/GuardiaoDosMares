
acao = function() {
	musica_flag = !musica_flag;
	obj_SoundManager.setTocarMusica(musica_flag);
	
	
	if (musica_flag)
	{
	sprite_index =Default65;

	if (!audio_is_playing(snd_undersound)) {
    obj_SoundManager.tocarMusica(snd_undersound);
}
		
	}
	else
	{
	audio_stop_all()
	sprite_index = Default66;
	}
}

