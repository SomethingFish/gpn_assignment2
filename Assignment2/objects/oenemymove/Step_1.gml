if (hp <= 0)
{
	instance_create_layer(x,y,layer,oEnemyMoveDead);
	audio_play_sound(EnemyDieSound, 6, false);
	instance_destroy();
}