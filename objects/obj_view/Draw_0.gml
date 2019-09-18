//draw slef
draw_self();

//draw health
for (i = 0; i < obj_player.hp; i++) {
	draw_sprite(sp_playerhealth,(obj_player.invcounter != 0),x - 992 + (68 * i),y + 480);
}

//level
if (obj_stats.showstats) {
	draw_set_alpha(0.3);
	draw_rectangle_color(x -1024, y -576, x -760, y -550, make_color_rgb(255, 255, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), false);
	draw_rectangle_color(x -1024, y -549, x -760, y -470, make_color_rgb(0, 255, 255), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), false);
	draw_rectangle_color(x -1024, y -469, x -760, y -398, make_color_rgb(255, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), false);
	draw_rectangle_color(x -1024, y -397, x -760, y -348, make_color_rgb(100, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), make_color_rgb(0, 0, 0), false);
	draw_set_alpha(1);
	draw_text(x -1022, y -574, "Level:                    " + string(obj_stats.level));
	draw_text(x -1022, y -542, "Damage:                   " + string(obj_stats.dmg));
	draw_text(x -1022, y -526, "Speed:                    " + string(obj_stats.spd));
	draw_text(x -1022, y -510, "Range:                    " + string(obj_stats.range));
	draw_text(x -1022, y -494, "Attack Delay:             " + string(obj_stats.firerate));
	draw_text(x -1022, y -462, "Enemy Bonus Health:       " + string(obj_stats.enemybonhp));
	draw_text(x -1022, y -446, "Enemy Attack Damage:      " + string(obj_stats.attackdmg));
	draw_text(x -1022, y -430, "Enemy Beam Damage:        " + string(obj_stats.beamdmg));
	draw_text(x -1022, y -414, "Enemy Explosive Damage:   " + string(obj_stats.explodedmg));
	draw_text(x -1022, y -382, "Boss Hp:                  " + string(obj_stats.bosshp));
	draw_text(x -1022, y -366, "Boss Damage:              " + string(obj_stats.bossdmg));
}