scr_initinput();
scr_getinput();
Dashpad_buffer = 0;
vertical = false;
verticaloffset = 0;
global.saveroom = ds_list_create();
grav = 0.5;
hsp = 0;
vsp = 0;
xscale = 1;
yscale = 1;
facehurt = 1;
steppy = false;
stop = 0;
storedhsp = 0;
depth = -7;
movespeed = 19;
jumpstop = false;
visible = true;
state = states.titlescreen;
jumpAnim = true;
landAnim = false;
machslideAnim = 0;
moveAnim = true;
stopAnim = true;
crouchslideAnim = true;
crouchAnim = true;
machhitAnim = false;
stompAnim = false;
inv_frames = 0;
gumbobpropellerlength = 100;
gumbobpropellercooldown = 200;
hurted = false;
canrebound = 0;
autodash = false;
mach2 = 0;
input_buffer_jump = 8;
input_buffer_secondjump = 8;
input_buffer_highjump = 8;
player_x = x;
player_y = y;
targetRoom = 0;
flash = false;
parryid = -4;
global.key_inv = 0;
global.mallowfollow = 0;
global.crackfollow = 0;
global.chocofollow = 0;
global.wormfollow = 0;
global.candyfollow = 0;
global.keyget = 0;
global.collect = 0;
global.ammo = 0;
global.treasure = 0;
global.combo = 0;
global.roomsave = false;
global.combotime = 0;
global.pizzacoin = 0;
global.toppintotal = 1;
global.hit = 0;
global.combofreeze = 0;
global.baddieroom = ds_list_create();
key_particles = false;
barrel = 0;
bounce = 0;
a = 0;
idle = 0;
attacking = false;
slamming = 0;
superslam = 0;
grounded = true;
grinding = 0;
machpunchAnim = 0;
punch = 0;
machfreefall = 0;
shoot = 1;
instakillmove = 0;
windingAnim = 0;
facestompAnim = false;
ladderbuffer = 0;
toomuchalarm1 = 0;
toomuchalarm2 = 0;
bushdetection = false;
idleanim = 0;
momemtum = 0;
cutscene = 0;
grabbing = 0;
dir = xscale;
shotgunAnim = 0;
goingdownslope = 0;
goingupslope = 0;
fallinganimation = 0;
bombpeptimer = 100;
suplexmove = false;
suplexhavetomash = 0;
breakdanceammo = 0;
anger = 0;
angry = false;
character = "P";
baddiegrabbedID = -4;
scr_characterspr();
paletteselect = 1;
global.panic = false;
colorchange = 0;
treasure_x = 0;
treasure_y = 0;
treasure_room = 0;
wallspeed = 0;
tauntstoredstate = states.normal;
tauntstoredmovespeed = 6;
tauntstoredsprite = spr_molassesbgpara2;
taunttimer = 20;
global.golfhit = 0;
global.funmode = 0;
swingdingbuffer = 0;
lastmove = 0;
hurtbounce = false;
targetDoor = "A";
roomstartx = xstart;
roomstarty = ystart;
hallway = 0;
box = 0;
scr_pal_swap_init_system(0);
global.cane = 0;
jumpspeed = 0;
metal = 0;
drill = true;
bouncespeed = 0;
bounced = 0;
groundedcot = false;
ini_open("saveData.ini");
global.fullscreen = ini_read_real("Settings", "fullscrn", 0);
global.smoothcam = ini_read_real("Settings", "smthcam", 1);
global.screentilt = ini_read_real("Settings", "scrntilt", 1);
ini_close();
inhaling = 0;
name = "none"