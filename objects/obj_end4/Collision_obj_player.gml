/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// No evento de Colisão do JOGADOR (com a PORTA)



if (global.lixo >= 5)
{
    // CONDIÇÃO ATINGIDA: O jogador tem 5 ou mais lixos
    // Ir para a próxima fase
   transicao_simples(Tela_Inicial);
   muda_sprite(spr_end_move);
    // Se preferir ir para uma fase específica, use:
    // room_goto(nome_da_sua_proxima_fase);
}
else
{
    // NÃO tem lixo suficiente
    
    // 1. Define a mensagem que o controller deve exibir
    obj_controller.mensagem_feedback = "Você precisa coletar 5 lixos!!";
    
    // 2. Define o alarme 0 do controller para 120 "passos" (frames)
    // Se seu jogo roda a 60 FPS, 120 frames = 2 segundos
    obj_controller.alarm[0] = 120;
    
    // Opcional: Tocar um som de "erro" ou "trancado"
    // audio_play_sound(snd_erro, 1, false);
}
