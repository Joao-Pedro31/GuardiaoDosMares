/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(move_checkpoint == false)
{
	velv = 0;
	velh = 0;
	
	muda_sprite(spr_player_die)
	audio_play_sound(snd_morrendo, 2, false);
	move_checkpoint = true;
	screenshake(5);
}
