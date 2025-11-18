sp/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//draw_sprite(spr_li, 0, 20,20);

draw_sprite_ext(spr_li, (get_timer()/1000000)*10,20,20,2,2,0,c_yellow,1);

draw_set_font(fnt_arial);

draw_set_color(c_aqua);

draw_text(25,25,"x"+string(global.lixo));


draw_set_color(c_white);
draw_set_font(-1);

// --- NOVO CÓDIGO PARA A MENSAGEM DE FEEDBACK ---
// Checa se a variável "mensagem_feedback" NÃO está vazia
if (mensagem_feedback != "")
{
    // Pega o centro da tela para posicionar o texto
    var _gui_largura = display_get_gui_width();

    var _pos_x = _gui_largura / 2; // Posição X (centro)
    
    // Configurações para o texto de aviso
	
    draw_set_font(fnt_bold);
    draw_set_color(c_orange); // Vermelho para indicar erro
    draw_set_halign(fa_center); // Alinhar pelo centro
    
    // Desenha o texto perto da parte de baixo da tela
    draw_text(_pos_x, 300, mensagem_feedback); // Ajuste o "300" para onde quiser
    
    // Reseta as configurações para não afetar outros textos
    draw_set_color(c_white);
    draw_set_halign(fa_left);
}
draw_set_color(-1);
