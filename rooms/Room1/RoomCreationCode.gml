if(global.audio_on)
{
audio_play_sound(snd_undersound, 10, true);
audio_set_master_gain(1, 0);
}
	
obj_controller.mensagem_feedback = "Voce precisa coletar todos os lixos!!";
obj_controller.alarm[0] = 120;
