#region enumstuff
	enum states
	{
	normal,
	titlescreen,
	Nhookshot,
	slap,
	charge,
	cheesepep,
	cheeseball,
	cheesepepstick,
	boxxedpep,
	pistolaim,
	climbwall,
	knightpepslopes,
	portal,
	secondjump,
	chainsawbump,
	handstandjump,
	gottreasure,
	knightpep,
	knightpepattack,
	meteorpep,
	bombpep,
	grabbing,
	chainsawpogo,
	shotgunjump,
	stunned,
	highjump,
	chainsaw,
	facestomp,
	timesup,
	machroll,
	pistol,
	shotgun,
	machfreefall,
	Throw,
	superslam,
	slam,
	skateboard,
	grind,
	grab,
	punch,
	backkick,
	uppunch,
	shoulder,
	backbreaker,
	bossdefeat,
	bossintro,
	smirk,
	pizzathrow,
	gameover,
	Sjumpland,
	freefallprep,
	runonball,
	boulder,
	keyget,
	tackle,
	slipnslide,
	ladder,
	jump,
	victory,
	comingoutdoor,
	Sjump,
	Sjumpprep,
	crouch,
	crouchjump,
	crouchslide,
	mach1,
	mach2,
	mach3,
	machslide,
	bump,
	hurt,
	freefall,
	freefallland,
	hang,
	door,
	barrelnormal,
	barrelfall,
	barrelmach1,
	barrelmach2,
	barrelfloat,
	barrelcrouch,
	barrelslipnslide,
	barrelroll,
	current,
	finishingblow,
	cotton,
	uppercut,
	pal,
	shocked,
	bushdisguise,
	parry,
	talkto,
	puddle,
	tumble,
	cottondrill,
	cottonroll,
	breakdance,
	gumbobpropeller,
	gumbobmixnbrew,
	minecart,
	fireass,
	squished,
	machtumble,
	machpizzano,
	rocketfistpizzano,
	coneboyattack,
	coneboydive,
	coneboyinhale
}

#endregion

#region statestuff
function scr_playerstate()
{
	
	switch (state)
	{
		case states.normal: // 0
			scr_player_normal();
			break;
		case states.titlescreen: // 1
			scr_player_titlescreen();
			break;
		case states.Nhookshot: // 2
			scr_playerN_hookshot();
			break;
		case states.slap: // 5
			scr_player_slap();
			break;
		case states.charge: // 88
			scr_player_charge();
			break;
		case states.cheesepep: // 6
			scr_player_cheesepep();
			break;
		case states.cheeseball: // 4
			scr_player_cheeseball();
			break;
		case states.cheesepepstick: // 7
			scr_player_cheesepepstick();
			break;
		case states.boxxedpep: // 8
			scr_player_boxxedpep();
			break;
		case states.pistolaim: // 9
			scr_player_pistolaim();
			break;
		case states.climbwall: // 10
			scr_player_climbwall();
			break;
		case states.knightpepslopes: // 11
			scr_player_knightpepslopes();
			break;
		case states.portal: // 12
			scr_player_portal();
			break;
		case states.secondjump: // 13
			scr_player_secondjump();
			break;
		case states.chainsawbump: // 14
			scr_player_chainsawbump();
			break;
		case states.handstandjump: // 15
			scr_player_handstandjump();
			break;
		case states.gottreasure: // 16
			scr_player_gottreasure();
			break;
		case states.knightpep: // 17
			scr_player_knightpep();
			break;
		case states.knightpepattack: // 18
			scr_player_knightpepattack();
			break;
		case states.meteorpep: // 19
			scr_player_meteorpep();
			break;
		case states.bombpep: // 20
			scr_player_bombpep();
			break;
		case states.grabbing: // 21
			scr_player_grabbing();
			break;
		case states.chainsawpogo: // 22
			scr_player_chainsawpogo();
			break;
		case states.shotgunjump: // 23
			scr_player_shotgunjump();
			break;
		case states.stunned: // 24
			scr_player_stunned();
			break;
		case states.highjump: // 25
			scr_player_highjump();
			break;
		case states.chainsaw: // 26
			scr_player_chainsaw();
			break;
		case states.facestomp: // 27
			scr_player_facestomp();
			break;
		case states.timesup: // 29
			scr_player_timesup();
			break;
		case states.machroll: // 30
			scr_player_machroll();
			break;
		case states.pistol: // 32
			scr_player_pistol();
			break;
		case states.shotgun: // 31
			scr_player_shotgun();
			break;
		case states.machfreefall: // 33
			scr_player_machfreefall();
			break;
		case states.Throw: // 34
			scr_player_throw();
			break;
		case states.superslam: // 36
			scr_player_superslam();
			break;
		case states.slam: // 35
			scr_player_slam();
			break;
		case states.skateboard: // 37
			scr_player_skateboard();
			break;
		case states.grind: // 38
			scr_player_grind();
			break;
		case states.grab: // 39
			scr_player_grab();
			break;
		case states.punch: // 40
			scr_player_punch();
			break;
		case states.backkick: // 41
			scr_player_backkick();
			break;
		case states.uppunch: // 42
			scr_player_uppunch();
			break;
		case states.shoulder: // 43
			scr_player_shoulder();
			break;
		case states.backbreaker: // 44
			scr_player_backbreaker();
			break;
		case states.bossdefeat: // 45
			scr_player_bossdefeat();
			break;
		case states.bossintro:  // 47
			scr_player_bossintro();
			break;
		case states.smirk: // 55
			scr_player_smirk();
			break;
		case states.pizzathrow: // 46
			scr_player_pizzathrow();
			break;
		case states.gameover: // 48
			scr_player_gameover();
			break;
		case states.Sjumpland: // 85
			scr_player_Sjumpland();
			break;
		case states.freefallprep: // 84
			scr_player_freefallprep();
			break;
		case states.runonball: // 82
			scr_player_runonball();
			break;
		case states.boulder: // 81
			scr_player_boulder();
			break;
		case states.keyget: // 49
			scr_player_keyget();
			break;
		case states.tackle: // 50
			scr_player_tackle();
			break;
		case states.slipnslide: // 53
			scr_player_slipnslide();
			break;
		case states.ladder: // 52
			scr_player_ladder();
			break;
		case states.jump: // 51
			scr_player_jump();
			break;
		case states.victory: // 57
			scr_player_victory();
			break;
		case states.comingoutdoor: // 54
			scr_player_comingoutdoor();
			break;
		case states.Sjump: // 56
			scr_player_Sjump();
			break;
		case states.Sjumpprep: // 58
			scr_player_Sjumpprep();
			break;
		case states.crouch: // 59
			scr_player_crouch();
			break;
		case states.crouchjump: // 60
			scr_player_crouchjump();
			break;
		case states.crouchslide: // 61
			scr_player_crouchslide();
			break;
		case states.mach1: // 62
			scr_player_mach1();
			break;
		case states.mach2: // 63
			scr_player_mach2();
			break;
		case states.mach3: // 83
			scr_player_mach3();
			break;
		case states.machslide: // 64
			scr_player_machslide();
			break;
		case states.bump: // 65
			scr_player_bump();
			break;
		case states.hurt: // 66
			scr_player_hurt();
			break;
		case states.freefall: // 67
			scr_player_freefall();
			break;
		case states.freefallland: // 70
			scr_player_freefallland();
			break;
		case states.hang: // 68
			scr_player_hang();
			break;
		case states.door: // 71
			scr_player_door();
			break;
		case states.barrelnormal: // 77
			scr_player_barrelnormal();
			break;
		case states.barrelfall: // 76
			scr_player_barrelfall();
			break;
		case states.barrelmach1: // 75
			scr_player_barrelmach1();
			break;
		case states.barrelmach2: // 74
			scr_player_barrelmach2();
			break;
		case states.barrelfloat: // 73
			scr_player_barrelfloat();
			break;
		case states.barrelcrouch: // 72
			scr_player_barrelcrouch();
			break;
		case states.barrelslipnslide: // 78
			scr_player_barrelslipnslide();
			break;
		case states.barrelroll: // 79
			scr_player_barrelroll();
			break;
		case states.current: // 80
			scr_player_current();
			break;
		case states.finishingblow: // 90
			scr_player_finishingblow();
			break;
		case states.cotton: // 100
			scr_player_cotton();
			break;
		case states.uppercut: // 101
			scr_player_uppercut();
			break;
		case states.pal: // 102
			scr_player_pal();
			break;
		case states.shocked: // 103
			scr_player_shocked();
			break;
		case states.bushdisguise: //104
			scr_player_bushdisguise();
			break;
		case states.parry: // 105
			scr_player_parry();
			break;
		case states.talkto: // 107
			scr_player_talkto();
			break;
		case states.puddle: // 108
			scr_player_puddle();
			break;
		case states.tumble: // 109
			scr_player_tumble();
			break;
		case states.cottondrill: // 110
			scr_player_cottondrill();
			break;
		case states.cottonroll: // 111
			scr_player_cottonroll();
			break;
		case states.breakdance: // 114
			scr_player_breakdance();
			break;
		case states.gumbobpropeller: // 115
			scr_gumbob_propeller();
			break;
		case states.gumbobmixnbrew: // 116
			scr_gumbob_mixnbrew();
			break;
		case states.minecart: // 117
			scr_player_minecart();
			break;
		case states.fireass: // 118
			scr_player_fireass();
			break;
		case states.squished: // 119
			scr_player_squished();
			break;
		case states.machtumble: // 120
			scr_player_machtumble();
			break;
		case states.machpizzano: // 999
			scr_mach_pizzano();
			break;
		case states.rocketfistpizzano: // 888
			scr_rocketfist_pizzano();
			break;
		case states.coneboyattack: // 300
			scr_player_coneboy_attack();
			break;
		case states.coneboydive: // 301
			scr_player_coneboy_dive();
			break;
		case states.coneboyinhale: // 302
			scr_coneboy_inhale();
			break;
	}
		
}
#endregion


