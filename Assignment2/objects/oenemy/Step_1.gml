if (hp <= 0)
{
	instance_create_layer(x,y,layer,oEnemyDead);
	audio_play_sound(EnemyDieSound, 6, false);
	instance_destroy();
}