/// @description Insert description here
// You can write your code in this editor
text_on_button = "Espanol";
script_when_pressed = scr_startGameInSpanish
snd_index           = snd_tick;

is_pressed      = false;
delay_duration  = 0.25;
delay_timer     = delay_duration + 1.0;

is_pressed_prev = is_pressed;

// New Code
if ( true == global.language_espanol){
	text_on_button  = "¿Jugar de nuevo?";
} else {
	text_on_button  = "Play Again?";
}

script_when_pressed = scr_restartGame;

image_xscale = 0.5;
image_yscale = 0.5;