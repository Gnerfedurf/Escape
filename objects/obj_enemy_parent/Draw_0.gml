//draw self
draw_self();

//draw health
for (i = 0; i < hp; i++) {
	draw_sprite(sp_enemyhealth,(invcounter != 0),x + (18 * i) -(18 * hp / 2),y -hpheight);
}