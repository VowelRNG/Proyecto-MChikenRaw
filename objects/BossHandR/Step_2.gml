if(Boss.vida <= 0){
if(Ken.Controlled != noone){
	Ken.Controlled = noone
	Ken.sprite_index = Kensp;
	Ken.vspeed = 0
		Ken.hspeed = 0
		Ken.sprite_index = KenDamagedsp
		Ken.alarm[3] = 20;
			if(Ken.image_xscale = -1){
		Ken.hspeed += 5;	
		Ken.vspeed -= 10;
		}else{
		Ken.hspeed -= 5;	
		Ken.vspeed -= 10;
		}
		instance_destroy(Boss)
		instance_destroy(BossHandL)
		instance_destroy()
	}
}