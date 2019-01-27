/// Initialize
snd_index   = snd_tick;
is_pressed  = false;
image_speed = 0;
fade_and_destroy = false;
create_copy = false;

sprite_index_head     = spr_madre_base;
sprite_index_eyes     = spr_madre_ojos;
sprite_index_nose     = spr_madre_nariz;
sprite_index_mouth    = spr_madre_boca;
sprite_index_eyeBrows = spr_madre_cejas

image_index_head     = 0;
image_index_eyes     = 0;
image_index_nose     = 0;
image_index_mouth    = 0;
image_index_eyeBrows = 0;

enable_cirle_motion = true;
circle_period       = 80.0;
rot_vel             = 2 * pi /circle_period;
circle_radius       = 0.5 * room_height - 0.5 * sprite_get_height(spr_madre_base);
init_angle          = random(360);
timer               = 0.0;
angle               = init_angle;
fp_angle            = true;


fade_timer_start    = 0.0;
fade_alpha_duration = 5.0;
fade_timer          = fade_timer_start + fade_alpha_duration;
fade_alpha_start    = 0.0;
fade_alpha_change   = 1.0;
fade_alpha          = 0.0;

guess_wrong_counter_prev = 0;

tween_x_start    = x;
tween_x_duration = 2.0;
tween_x_delta    = 0.0;
tween_x_timer    = tween_x_duration + 1;
tween_x_scr      = ease_inout_sine;

tween_y_start    = y;
tween_y_duration = 2.0;
tween_y_delta    = 0.0;
tween_y_timer    = tween_y_duration + 1;
tween_y_scr      = ease_inout_sine;