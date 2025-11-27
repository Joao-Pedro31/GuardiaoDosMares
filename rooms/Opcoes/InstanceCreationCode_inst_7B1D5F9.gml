acao = function() {
	sfx_flag = !sfx_flag;
	obj_SoundManager.setTocarSfx(sfx_flag);
	
	
	if (sfx_flag)
	{
	sprite_index = desativarSom;
		
	}
	else
	{
	sprite_index = ativarSom;
	}
}