/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//movimentar junto com o inimigo o hit

if(instance_exists(mus_hit))
{
	mus_hit.x = x;
	mus_hit.y = y-4; 
}

if(inimigo_morto)
{
	instance_destroy(mus_hit);
	
	if(image_index >= image_number - 1)
	{
		instance_destroy();
	}
	exit;
}

var _chao = place_meeting(x,y+1,obj_bloco);
var _parede = place_meeting(x+velh,y,obj_bloco);

var _xDirection = velh *-1;

if(_xDirection != 0)
{
	if(_xDirection >= 1)
	image_xscale = 1;
	else if(_xDirection <= -1) 
	image_xscale = -1;
}

if(_chao)
{
	tempo_decidir_andar -= 1;
	
	if(tempo_decidir_andar <= 0)
	{
		if(andando)
		{
			virar_inimigo = true;
			velh = velocidade;
			andando = false;
		}
		else
		{
			velh = 0;
			
			if(virar_inimigo)
			{
				velocidade *= -1;
				virar_inimigo = false;
			}
			andando =  true;
		}
		
		tempo_decidir_andar = room_speed * 2;
	}
	
	if(velv != 0 && !levou_dano)
	{
		sprite_index = spr_slime_run;
	}
	else
	{
		if(image_index >= image_number - 1)
			sprite_index = spr_slime_idle; 
	}
	
	if(_parede)
	{
		velh *= -1;
	}
	
	if(!pode_cair)
	{
		if(!place_meeting(x+(velh*5), y+1, obj_bloco))
		{
			velh *= -1;
		}
	}

}
else
{
	velv = 0;
	velv += gravidade; 
}

if(levou_dano && !invencivel)
{
	invencivel = true;
	velh = 0;
	inimigo_vida --;
	
	if(inimigo_vida <= 0)
	{
		inimigo_morto = true;
		muda_sprite(spr_inimigo_die);
	}
	else
	{
		alarm[0] = room_speed;
		sprite_index = spr_slime_hit;
	}
}









 

