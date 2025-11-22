/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_xscale = lerp(image_xscale, escala_x, .1);
image_yscale = lerp(image_yscale, escala_y, .1);

if(musica_flag)
{
    sprite_index = Default66;
}

else
{
    sprite_index = Default65;
}