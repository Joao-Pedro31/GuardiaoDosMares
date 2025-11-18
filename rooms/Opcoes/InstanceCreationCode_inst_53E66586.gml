acao = function()
{

global.audio_on = !global.audio_on;

if (global.audio_on)
{
    audio_set_master_gain(1, 0);
	
}
else
{
    audio_set_master_gain(0, 0);
}

}

