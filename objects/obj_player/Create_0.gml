/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Inherit the parent event
event_inherited();

velocidade = 5;
gravidade = .3;

forca_pulo = -7;

qtd_pulos = 0;
max_pulos = 2;

sprite_run = spr_mask_run;
sprite_idle = spr_idle;
sprite_wall_Jump = spr_wall_jump;
sprite_jump = spr_jump;
sprite_double_jump = spr_doublej;
sprite_fall = spr_fall


move_checkpoint = false;

function input_player()
{
	
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	jump = keyboard_check_pressed(vk_space);
	
	_xDirection = right - left;
	
	var _velh = (right - left) * velocidade;
	
	var _no_chao = place_meeting(x, y+1,obj_bloco);
	var _na_parede = place_meeting(x+(_xDirection), y,obj_bloco);
	
	if(_xDirection != 0)
	{
		image_xscale = _xDirection;
	}
	
	if(_no_chao)
	{
		if(_xDirection != 0)
		{
			sprite_index = sprite_run;
		}
		else
		{
			sprite_index = sprite_idle
		}
	}
	
	else if(_na_parede)
	{
		sprite_index = sprite_wall_Jump;
	}
	else{
		
		if(qtd_pulos == (max_pulos - 1))
		{
			sprite_index = sprite_jump;
		}
		else
		{
			sprite_index = sprite_double_jump;
		}
		
		if(velv > 0)
		{
			var _inimigo = instance_place(x, y, obj_inimigo_pai);
			if(_inimigo)
			{
				_inimigo.levou_dano =  true;
				velv = forca_pulo;
			}
			
			sprite_index = sprite_fall;
		}
	}
	
	
	if(_no_chao)
	{
		qtd_pulos = max_pulos;
		if(jump)
		{
			velv = forca_pulo;
			qtd_pulos--;
			obj_SoundManager.tocarSfx(snd_cartoon_jump);
		}
	}
	else
	{
		if(jump && (qtd_pulos == 1 || qtd_pulos == 2 ))
		{
			qtd_pulos = 1;
			velv = forca_pulo;
			qtd_pulos--;
			obj_SoundManager.tocarSfx(snd_cartoon_jump);
		}
		velv += gravidade;
		
		// codigo wall jump
		if(_na_parede)
		{
			velv = 1;
		
			if(jump)
			{
			velv = forca_pulo;
			velh = (10 * _xDirection)*-1;
			obj_SoundManager.tocarSfx(snd_cartoon_jump);
			}
		}
	}
	velh = lerp(velh, _velh, .1);
}

if (MOBILE){
	
	virtual_key_add(20,650, 100, 100, ord("A"));
	virtual_key_add(380,650, 100, 100, ord("D"));
	virtual_key_add(1200,640, 100, 100, vk_space);

}