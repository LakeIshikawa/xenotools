Entity = {}



Entity[ "0" ] = {
    on_start = function( self )
        -- 0xBC_EntityNoModelInit() -- 0x0008 0xbc
        -- 0x2A() -- 0x0009 0x2a
        -- 0xA0() -- 0x000a 0xa0
        -- 0xF1() -- 0x0011 0xf1
        -- 0x75() -- 0x001c 0x75
        return 0 -- 0x001f 0x00
    end,

    on_update = function( self )
        -- 0xFE54() -- 0x0020 0xfe
        -- 0xFE0E_SoundSetVolume( volume=127, steps=1 ) -- 0x0022 0xfe
        -- 0x99() -- 0x0028 0x99
        -- 0x35() -- 0x0029 0x35
        -- 0x63() -- 0x002f 0x63
        -- 0xA3() -- 0x0037 0xa3
        -- 0x05_CallFunction( 0x1444 ) -- 0x003f 0x05
        -- 0x26_Wait( time=60 ) -- 0x0042 0x26
        -- 0x08_EntityCallScriptSW( entity=0x0c, script=0x65 ) -- 0x0045 0x08
        -- 0x26_Wait( time=240 ) -- 0x0048 0x26
        -- 0x05_CallFunction( 0x1659 ) -- 0x004b 0x05
        -- 0xB4_FadeIn() -- 0x004e 0xb4
        -- 0x26_Wait( time=80 ) -- 0x0051 0x26
        -- 0x09_EntityCallScriptEW( entity=0x0c, script=0x64 ) -- 0x0054 0x09
        -- 0xB3() -- 0x0057 0xb3
        -- 0x08_EntityCallScriptSW( entity=0x0c, script=0x66 ) -- 0x005a 0x08
        -- 0x26_Wait( time=200 ) -- 0x005d 0x26
        -- 0x05_CallFunction( 0x1659 ) -- 0x0060 0x05
        -- 0xB4_FadeIn() -- 0x0063 0xb4
        -- 0x26_Wait( time=80 ) -- 0x0066 0x26
        -- 0x09_EntityCallScriptEW( entity=0x0c, script=0x64 ) -- 0x0069 0x09
        -- 0xB3() -- 0x006c 0xb3
        -- 0x08_EntityCallScriptSW( entity=0x0c, script=0x67 ) -- 0x006f 0x08
        -- 0x26_Wait( time=160 ) -- 0x0072 0x26
        -- 0x05_CallFunction( 0x1659 ) -- 0x0075 0x05
        -- 0xB4_FadeIn() -- 0x0078 0xb4
        -- 0x26_Wait( time=80 ) -- 0x007b 0x26
        -- 0x09_EntityCallScriptEW( entity=0x0c, script=0x64 ) -- 0x007e 0x09
        -- 0xB3() -- 0x0081 0xb3
        -- 0x08_EntityCallScriptSW( entity=0x0c, script=0x68 ) -- 0x0084 0x08
        -- 0x26_Wait( time=240 ) -- 0x0087 0x26
        -- 0x05_CallFunction( 0x1659 ) -- 0x008a 0x05
        -- 0xB4_FadeIn() -- 0x008d 0xb4
        -- 0x26_Wait( time=80 ) -- 0x0090 0x26
        -- 0x09_EntityCallScriptEW( entity=0x0c, script=0x64 ) -- 0x0093 0x09
        -- 0xB3() -- 0x0096 0xb3
        -- 0x08_EntityCallScriptSW( entity=0x0c, script=0x69 ) -- 0x0099 0x08
        -- 0x26_Wait( time=160 ) -- 0x009c 0x26
        -- 0x05_CallFunction( 0x1659 ) -- 0x009f 0x05
        -- 0xB4_FadeIn() -- 0x00a2 0xb4
        -- 0x26_Wait( time=80 ) -- 0x00a5 0x26
        -- 0x09_EntityCallScriptEW( entity=0x0c, script=0x64 ) -- 0x00a8 0x09
        -- 0xB3() -- 0x00ab 0xb3
        -- 0x08_EntityCallScriptSW( entity=0x01, script=0x64 ) -- 0x00ae 0x08
        -- 0xF1() -- 0x00b1 0xf1
        -- 0x26_Wait( time=120 ) -- 0x00bc 0x26
        -- 0xD0() -- 0x00bf 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0000, flaf=0x41 ) -- 0x00ca 0xf5
        -- 0x9C() -- 0x00ce 0x9c
        -- 0x26_Wait( time=140 ) -- 0x00cf 0x26
        -- 0x07( entity=0x0b, script=0x24 ) -- 0x00d2 0x07
        -- 0x26_Wait( time=70 ) -- 0x00d5 0x26
        -- 0xFE0E_SoundSetVolume( volume=0, steps=240 ) -- 0x00d8 0xfe
        -- 0xD0() -- 0x00de 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0001, flaf=0x41 ) -- 0x00e9 0xf5
        -- 0x9C() -- 0x00ed 0x9c
        -- 0x08_EntityCallScriptSW( entity=0x01, script=0x65 ) -- 0x00ee 0x08
        -- 0x26_Wait( time=40 ) -- 0x00f1 0x26
        -- 0x07( entity=0x0b, script=0x25 ) -- 0x00f4 0x07
        -- 0x87_SetProgress( progress=3 ) -- 0x00f7 0x87
        -- 0x98_MapLoad( field_id=2, value=0 ) -- 0x00fa 0x98
        -- 0x5B() -- 0x00ff 0x5b
        return 0 -- 0x0100 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x0101 0x00
    end,

    on_push = function( self )
        return 0 -- 0x0101 0x00
    end,

}



Entity[ "1" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 0 ) -- 0x0102 0x16
        -- 0xFE0D_SetAvatar( character_id=0 ) -- 0x0105 0xfe
        -- 0x23() -- 0x0109 0x23
        return 0 -- 0x010a 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x010b 0xa7
        return 0 -- 0x010c 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x010d 0x00
    end,

    on_push = function( self )
        return 0 -- 0x010d 0x00
    end,

    script_0x04 = function( self )
        -- 0x26_Wait( time=60 ) -- 0x010e 0x26
        -- 0x35() -- 0x0111 0x35
        -- 0x63() -- 0x0117 0x63
        -- 0xA3() -- 0x011f 0xa3
        -- 0x05_CallFunction( 0x1444 ) -- 0x0127 0x05
        return 0 -- 0x012a 0x00
    end,

    script_0x05 = function( self )
        -- 0x35() -- 0x012b 0x35
        -- 0x63() -- 0x0131 0x63
        -- 0xA3() -- 0x0139 0xa3
        -- 0x05_CallFunction( 0x1444 ) -- 0x0141 0x05
        -- 0x35() -- 0x0144 0x35
        -- 0x63() -- 0x014a 0x63
        -- 0xA3() -- 0x0152 0xa3
        -- 0x05_CallFunction( 0x1444 ) -- 0x015a 0x05
        -- 0x01_JumpTo( 0x0144 ) -- 0x015d 0x01
        return 0 -- 0x0160 0x00
    end,

}



Entity[ "2" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 2 ) -- 0x0161 0x16
        -- 0xFE0D_SetAvatar( character_id=2 ) -- 0x0164 0xfe
        -- 0x23() -- 0x0168 0x23
        return 0 -- 0x0169 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x016a 0xa7
        return 0 -- 0x016b 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x016c 0x00
    end,

    on_push = function( self )
        return 0 -- 0x016c 0x00
    end,

}



Entity[ "3" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 1 ) -- 0x016d 0x16
        -- 0xFE0D_SetAvatar( character_id=1 ) -- 0x0170 0xfe
        -- 0x23() -- 0x0174 0x23
        return 0 -- 0x0175 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x0176 0xa7
        return 0 -- 0x0177 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x0178 0x00
    end,

    on_push = function( self )
        return 0 -- 0x0178 0x00
    end,

}



Entity[ "4" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 3 ) -- 0x0179 0x16
        -- 0xFE0D_SetAvatar( character_id=3 ) -- 0x017c 0xfe
        -- 0x23() -- 0x0180 0x23
        return 0 -- 0x0181 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x0182 0xa7
        return 0 -- 0x0183 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x0184 0x00
    end,

    on_push = function( self )
        return 0 -- 0x0184 0x00
    end,

}



Entity[ "5" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 5 ) -- 0x0185 0x16
        -- 0xFE0D_SetAvatar( character_id=5 ) -- 0x0188 0xfe
        -- 0x23() -- 0x018c 0x23
        return 0 -- 0x018d 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x018e 0xa7
        return 0 -- 0x018f 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x0190 0x00
    end,

    on_push = function( self )
        return 0 -- 0x0190 0x00
    end,

}



Entity[ "6" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 6 ) -- 0x0191 0x16
        -- 0xFE0D_SetAvatar( character_id=6 ) -- 0x0194 0xfe
        -- 0x23() -- 0x0198 0x23
        return 0 -- 0x0199 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x019a 0xa7
        return 0 -- 0x019b 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x019c 0x00
    end,

    on_push = function( self )
        return 0 -- 0x019c 0x00
    end,

}



Entity[ "7" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 7 ) -- 0x019d 0x16
        -- 0xFE0D_SetAvatar( character_id=7 ) -- 0x01a0 0xfe
        -- 0x23() -- 0x01a4 0x23
        return 0 -- 0x01a5 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x01a6 0xa7
        return 0 -- 0x01a7 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x01a8 0x00
    end,

    on_push = function( self )
        return 0 -- 0x01a8 0x00
    end,

}



Entity[ "8" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 8 ) -- 0x01a9 0x16
        -- 0xFE0D_SetAvatar( character_id=8 ) -- 0x01ac 0xfe
        -- 0x23() -- 0x01b0 0x23
        return 0 -- 0x01b1 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x01b2 0xa7
        return 0 -- 0x01b3 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x01b4 0x00
    end,

    on_push = function( self )
        return 0 -- 0x01b4 0x00
    end,

}



Entity[ "9" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 9 ) -- 0x01b5 0x16
        -- 0xFE0D_SetAvatar( character_id=9 ) -- 0x01b8 0xfe
        -- 0x23() -- 0x01bc 0x23
        return 0 -- 0x01bd 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x01be 0xa7
        return 0 -- 0x01bf 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x01c0 0x00
    end,

    on_push = function( self )
        return 0 -- 0x01c0 0x00
    end,

}



Entity[ "10" ] = {
    on_start = function( self )
        -- 0x16_EntityPCInit( 10 ) -- 0x01c1 0x16
        -- 0xFE0D_SetAvatar( character_id=10 ) -- 0x01c4 0xfe
        -- 0x23() -- 0x01c8 0x23
        return 0 -- 0x01c9 0x00
    end,

    on_update = function( self )
        -- 0xA7() -- 0x01ca 0xa7
        return 0 -- 0x01cb 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x01cc 0x00
    end,

    on_push = function( self )
        return 0 -- 0x01cc 0x00
    end,

}



Entity[ "11" ] = {
    on_start = function( self )
        -- 0xBC_EntityNoModelInit() -- 0x01cd 0xbc
        -- 0xBE() -- 0x01ce 0xbe
        -- 0x23() -- 0x01d1 0x23
        -- 0x20_SpriteSetSolid() -- 0x01d2 0x20
        -- 0x2A() -- 0x01d5 0x2a
        return 0 -- 0x01d6 0x00
    end,

    on_update = function( self )
        -- 0xC6() -- 0x01d7 0xc6
        -- 0x31_JumpIfButtonNotPressed( button_mask=0x0040, jump_to=0x01e3 ) -- 0x01d8 0x31
        -- 0xFE97_ParticleReset( all=0x00 ) -- 0x01dd 0xfe
        -- 0x26_Wait( time=30 ) -- 0x01e0 0x26
        -- 0x5A() -- 0x01e3 0x5a
        -- 0x31_JumpIfButtonNotPressed( button_mask=0x0080, jump_to=0x0ae3 ) -- 0x01e4 0x31
        -- 0xFE97_ParticleReset( all=0x00 ) -- 0x01e9 0xfe
        -- 0x5A() -- 0x01ec 0x5a
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x01ed 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=2, wait=25, ttl=1 ) -- 0x01f6 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe2, y=(vf40)0x0006, z=(vf20)0x0000, speed_x=(vf10)0xfff6, speed_y=(vf08)0x0006, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0200 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x020f 0xfe
        -- 0xFE93( s_wait=1, var2=60, sprite_id=18, var4=0, var5=0 ) -- 0x021e 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x022a 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0235 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0244 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x024c 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=1, wait=10, ttl=1 ) -- 0x0254 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc9, y=(vf40)0xfff1, z=(vf20)0x0000, speed_x=(vf10)0xffe2, speed_y=(vf08)0x0005, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x025e 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x1770, acc_x=(vf40)0x03e8, acc_y=(vf20)0x0190, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x026d 0xfe
        -- 0xFE93( s_wait=1, var2=15, sprite_id=2, var4=0, var5=0 ) -- 0x027c 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x0001, flag=(flag)0xf0 ) -- 0x0288 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0293 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=130 ) -- 0x02a2 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x02aa 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=7, wait=55, ttl=32767 ) -- 0x02b2 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe4, y=(vf40)0x0002, z=(vf20)0x0000, speed_x=(vf10)0xffe4, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x02bc 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0003, rand_speed=(vf04)0x0003, flag=(flag)0xfc ) -- 0x02cb 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x02da 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x02e6 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x02f1 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0300 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0308 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=1, wait=65, ttl=32767 ) -- 0x0310 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe4, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0xffe4, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x031a 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0329 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x0338 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x01f4, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0344 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x0028, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x034f 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x035e 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0366 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=5, wait=45, ttl=32767 ) -- 0x036e 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe5, y=(vf40)0xfffd, z=(vf20)0x0000, speed_x=(vf10)0xffe5, speed_y=(vf08)0xfffb, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0378 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0387 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x0396 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x0028, flag=(flag)0xf0 ) -- 0x03a2 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x03ad 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x03bc 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x03c4 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=115, ttl=32767 ) -- 0x03cc 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffec, y=(vf40)0xfffa, z=(vf20)0x0000, speed_x=(vf10)0xffec, speed_y=(vf08)0xfffa, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x03d6 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0008, rand_speed=(vf04)0x0008, flag=(flag)0xfc ) -- 0x03e5 0xfe
        -- 0xFE93( s_wait=4, var2=20, sprite_id=4, var4=1, var5=0 ) -- 0x03f4 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0028, trans_y=(vf40)0x0028, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0019, flag=(flag)0xf0 ) -- 0x0400 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x040b 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x041a 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0422 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=65, ttl=32767 ) -- 0x042a 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe5, y=(vf40)0xfff6, z=(vf20)0x0000, speed_x=(vf10)0xffe5, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0434 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xfed4, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x000a, flag=(flag)0xfc ) -- 0x0443 0xfe
        -- 0xFE93( s_wait=4, var2=50, sprite_id=3, var4=1, var5=0 ) -- 0x0452 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0032, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x045e 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x0064, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0469 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0478 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0480 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=25, ttl=1 ) -- 0x0488 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe2, y=(vf40)0x0005, z=(vf20)0x0000, speed_x=(vf10)0xffe2, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0492 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x04a1 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x04b0 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x02bc, trans_y=(vf40)0x00c8, trans_add_x=(vf20)0x0028, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x04bc 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x04c7 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x04d6 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x04de 0xfe
        -- 0xFE96_ParticleCreate() -- 0x04e6 0xfe
        -- 0x5A() -- 0x04e8 0x5a
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x04e9 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=2, wait=25, ttl=1 ) -- 0x04f2 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x000b, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x000b, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x04fc 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x050b 0xfe
        -- 0xFE93( s_wait=1, var2=60, sprite_id=18, var4=0, var5=0 ) -- 0x051a 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x0526 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0531 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0540 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0548 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=1, wait=0, ttl=1 ) -- 0x0550 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xfff6, y=(vf40)0xfffb, z=(vf20)0x0000, speed_x=(vf10)0x0032, speed_y=(vf08)0x0032, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x055a 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x2328, acc_x=(vf40)0x0258, acc_y=(vf20)0x0064, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0569 0xfe
        -- 0xFE93( s_wait=1, var2=20, sprite_id=2, var4=0, var5=0 ) -- 0x0578 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x0002, flag=(flag)0xf0 ) -- 0x0584 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x058f 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=200 ) -- 0x059e 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x05a6 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=7, wait=40, ttl=32767 ) -- 0x05ae 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0009, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x05b8 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x05c7 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x05d6 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x000f, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x05e2 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x05ed 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x05fc 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0604 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=1, wait=25, ttl=32767 ) -- 0x060c 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0009, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0616 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0625 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x0634 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x0320, trans_add_x=(vf20)0x0046, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0640 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0096, g=(vf40)0x002d, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x064b 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x065a 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0662 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=5, wait=30, ttl=32767 ) -- 0x066a 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0x0028, speed_y=(vf08)0xfffb, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0674 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0096, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0683 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x0692 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x001e, flag=(flag)0xf0 ) -- 0x069e 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x06a9 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x06b8 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x06c0 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=70, ttl=32767 ) -- 0x06c8 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0019, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0x001e, speed_y=(vf08)0x000f, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x06d2 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xfed4, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x06e1 0xfe
        -- 0xFE93( s_wait=4, var2=20, sprite_id=4, var4=1, var5=0 ) -- 0x06f0 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x06fc 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0707 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0716 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x071e 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=50, ttl=32767 ) -- 0x0726 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0019, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0x0028, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0730 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x000f, flag=(flag)0xfc ) -- 0x073f 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=3, var4=1, var5=0 ) -- 0x074e 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0050, trans_y=(vf40)0x0050, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x075a 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x005a, b=(vf20)0x001e, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0765 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0774 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x077c 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=19, ttl=1 ) -- 0x0784 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x000e, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x000e, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x078e 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x079d 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x07ac 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0384, trans_y=(vf40)0x012c, trans_add_x=(vf20)0x0028, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x07b8 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x07c3 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x07d2 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x07da 0xfe
        -- 0xFE96_ParticleCreate() -- 0x07e2 0xfe
        -- 0x5A() -- 0x07e4 0x5a
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x07e5 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=3, wait=20, ttl=1000 ) -- 0x07ee 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffea, y=(vf40)0x000b, z=(vf20)0x0000, speed_x=(vf10)0xffea, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x07f8 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0807 0xfe
        -- 0xFE93( s_wait=1, var2=10, sprite_id=0, var4=0, var5=3 ) -- 0x0816 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x09c4, trans_y=(vf40)0x04b0, trans_add_x=(vf20)0x0000, trans_add_y=(vf10)0x0000, flag=(flag)0xf0 ) -- 0x0822 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0028, g=(vf40)0x0000, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x082d 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x083c 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0844 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=2, wait=50, ttl=1 ) -- 0x084c 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0016, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0016, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0856 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0865 0xfe
        -- 0xFE93( s_wait=1, var2=70, sprite_id=18, var4=0, var5=0 ) -- 0x0874 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x0880 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x088b 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x089a 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x08a2 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=1, wait=30, ttl=1 ) -- 0x08aa 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0000, y=(vf40)0xfff6, z=(vf20)0x0000, speed_x=(vf10)0xffce, speed_y=(vf08)0x0019, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x08b4 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x4e20, acc_x=(vf40)0xfc18, acc_y=(vf20)0x00c8, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x08c3 0xfe
        -- 0xFE93( s_wait=1, var2=20, sprite_id=2, var4=0, var5=0 ) -- 0x08d2 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0032, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0001, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x08de 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x08e9 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=860 ) -- 0x08f8 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0900 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=7, wait=50, ttl=32767 ) -- 0x0908 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0912 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0921 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x0930 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0011, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x093c 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0947 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0956 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x095e 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=1, wait=60, ttl=32767 ) -- 0x0966 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0014, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0970 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x097f 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x098e 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x01f4, trans_add_x=(vf20)0x003c, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x099a 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x002d, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x09a5 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x09b4 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x09bc 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=60, ttl=32767 ) -- 0x09c4 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0011, z=(vf20)0x0000, speed_x=(vf10)0xffd8, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x09ce 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0096, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x09dd 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x09ec 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x001e, flag=(flag)0xf0 ) -- 0x09f8 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0a03 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x0a12 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0a1a 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=80, ttl=32767 ) -- 0x0a22 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x000a, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0a2c 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xff9c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0a3b 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=3, var4=1, var5=0 ) -- 0x0a4a 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0050, trans_y=(vf40)0x0050, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x0a56 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x005a, b=(vf20)0x001e, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0a61 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0a70 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0a78 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=50, ttl=1 ) -- 0x0a80 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0014, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0a8a 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0a99 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x0aa8 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x02bc, trans_y=(vf40)0x012c, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0ab4 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x0abf 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x0ace 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0ad6 0xfe
        -- 0xFE96_ParticleCreate() -- 0x0ade 0xfe
        -- 0x26_Wait( time=30 ) -- 0x0ae0 0x26
        return 0 -- 0x0ae3 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x0ae4 0x00
    end,

    on_push = function( self )
        return 0 -- 0x0ae4 0x00
    end,

    script_0x04 = function( self )
        -- 0xC6() -- 0x0ae5 0xc6
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x0ae6 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=2, wait=25, ttl=1 ) -- 0x0aef 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe2, y=(vf40)0x0006, z=(vf20)0x0000, speed_x=(vf10)0xfff6, speed_y=(vf08)0x0006, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0af9 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0b08 0xfe
        -- 0xFE93( s_wait=1, var2=60, sprite_id=18, var4=0, var5=0 ) -- 0x0b17 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x0b23 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0b2e 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0b3d 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0b45 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=1, wait=10, ttl=1 ) -- 0x0b4d 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc9, y=(vf40)0xfff1, z=(vf20)0x0000, speed_x=(vf10)0xffe2, speed_y=(vf08)0x0005, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0b57 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x1770, acc_x=(vf40)0x03e8, acc_y=(vf20)0x0190, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0b66 0xfe
        -- 0xFE93( s_wait=1, var2=15, sprite_id=2, var4=0, var5=0 ) -- 0x0b75 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x0001, flag=(flag)0xf0 ) -- 0x0b81 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0b8c 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=130 ) -- 0x0b9b 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0ba3 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=7, wait=55, ttl=32767 ) -- 0x0bab 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe4, y=(vf40)0x0002, z=(vf20)0x0000, speed_x=(vf10)0xffe4, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0bb5 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0003, rand_speed=(vf04)0x0003, flag=(flag)0xfc ) -- 0x0bc4 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x0bd3 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x0bdf 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0bea 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0bf9 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0c01 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=1, wait=65, ttl=32767 ) -- 0x0c09 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe4, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0xffe4, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0c13 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0c22 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x0c31 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x01f4, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0c3d 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x0028, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x0c48 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x0c57 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0c5f 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=5, wait=45, ttl=32767 ) -- 0x0c67 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe5, y=(vf40)0xfffd, z=(vf20)0x0000, speed_x=(vf10)0xffe5, speed_y=(vf08)0xfffb, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0c71 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0c80 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x0c8f 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x0028, flag=(flag)0xf0 ) -- 0x0c9b 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0ca6 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x0cb5 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0cbd 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=115, ttl=32767 ) -- 0x0cc5 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffec, y=(vf40)0xfffa, z=(vf20)0x0000, speed_x=(vf10)0xffec, speed_y=(vf08)0xfffa, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0ccf 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0008, rand_speed=(vf04)0x0008, flag=(flag)0xfc ) -- 0x0cde 0xfe
        -- 0xFE93( s_wait=4, var2=20, sprite_id=4, var4=1, var5=0 ) -- 0x0ced 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0028, trans_y=(vf40)0x0028, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0019, flag=(flag)0xf0 ) -- 0x0cf9 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0d04 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0d13 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0d1b 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=65, ttl=32767 ) -- 0x0d23 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe5, y=(vf40)0xfff6, z=(vf20)0x0000, speed_x=(vf10)0xffe5, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0d2d 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xfed4, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x000a, flag=(flag)0xfc ) -- 0x0d3c 0xfe
        -- 0xFE93( s_wait=4, var2=50, sprite_id=3, var4=1, var5=0 ) -- 0x0d4b 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0032, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0d57 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x0064, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0d62 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0d71 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0d79 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=25, ttl=1 ) -- 0x0d81 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffe2, y=(vf40)0x0005, z=(vf20)0x0000, speed_x=(vf10)0xffe2, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0d8b 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0d9a 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x0da9 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x02bc, trans_y=(vf40)0x00c8, trans_add_x=(vf20)0x0028, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0db5 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x0dc0 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x0dcf 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0dd7 0xfe
        -- 0xFE96_ParticleCreate() -- 0x0ddf 0xfe
        -- 0x5A() -- 0x0de1 0x5a
        -- 0xC6() -- 0x0de2 0xc6
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x0de3 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=2, wait=25, ttl=1 ) -- 0x0dec 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x000b, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x000b, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0df6 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0e05 0xfe
        -- 0xFE93( s_wait=1, var2=60, sprite_id=18, var4=0, var5=0 ) -- 0x0e14 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x0e20 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0e2b 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0e3a 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0e42 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=1, wait=0, ttl=1 ) -- 0x0e4a 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xfff6, y=(vf40)0xfffb, z=(vf20)0x0000, speed_x=(vf10)0x0032, speed_y=(vf08)0x0032, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0e54 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x2328, acc_x=(vf40)0x0258, acc_y=(vf20)0x0064, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0e63 0xfe
        -- 0xFE93( s_wait=1, var2=20, sprite_id=2, var4=0, var5=0 ) -- 0x0e72 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0032, trans_add_x=(vf20)0x000a, trans_add_y=(vf10)0x0002, flag=(flag)0xf0 ) -- 0x0e7e 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0e89 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=200 ) -- 0x0e98 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0ea0 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=7, wait=40, ttl=32767 ) -- 0x0ea8 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0009, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0eb2 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0ec1 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x0ed0 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x000f, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x0edc 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0ee7 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x0ef6 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0efe 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=1, wait=25, ttl=32767 ) -- 0x0f06 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0009, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0f10 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0f1f 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x0f2e 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x0320, trans_add_x=(vf20)0x0046, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x0f3a 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0096, g=(vf40)0x002d, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x0f45 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x0f54 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0f5c 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=5, wait=30, ttl=32767 ) -- 0x0f64 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0x0028, speed_y=(vf08)0xfffb, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0f6e 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0096, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0f7d 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x0f8c 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x001e, flag=(flag)0xf0 ) -- 0x0f98 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x0fa3 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x0fb2 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x0fba 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=70, ttl=32767 ) -- 0x0fc2 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0019, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0x001e, speed_y=(vf08)0x000f, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x0fcc 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xfed4, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x0fdb 0xfe
        -- 0xFE93( s_wait=4, var2=20, sprite_id=4, var4=1, var5=0 ) -- 0x0fea 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x0ff6 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x1001 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x1010 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x1018 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=50, ttl=32767 ) -- 0x1020 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0019, y=(vf40)0x0003, z=(vf20)0x0000, speed_x=(vf10)0x0028, speed_y=(vf08)0xfffc, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x102a 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x000f, flag=(flag)0xfc ) -- 0x1039 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=3, var4=1, var5=0 ) -- 0x1048 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0050, trans_y=(vf40)0x0050, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x1054 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x005a, b=(vf20)0x001e, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x105f 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x106e 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x1076 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=19, ttl=1 ) -- 0x107e 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0014, y=(vf40)0x000e, z=(vf20)0x0000, speed_x=(vf10)0x0014, speed_y=(vf08)0x000e, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1088 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1097 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x10a6 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0384, trans_y=(vf40)0x012c, trans_add_x=(vf20)0x0028, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x10b2 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x10bd 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x10cc 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x10d4 0xfe
        -- 0xFE96_ParticleCreate() -- 0x10dc 0xfe
        -- 0x5A() -- 0x10de 0x5a
        -- 0xC6() -- 0x10df 0xc6
        -- 0xFE8F_ParticleSystemInit1( entity=(entity)0xfb, render_settings=2, rot_x=0, rot_y=0 ) -- 0x10e0 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=0, number_of_sprites=3, wait=20, ttl=1000 ) -- 0x10e9 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffea, y=(vf40)0x000b, z=(vf20)0x0000, speed_x=(vf10)0xffea, speed_y=(vf08)0x0000, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x10f3 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1102 0xfe
        -- 0xFE93( s_wait=1, var2=10, sprite_id=0, var4=0, var5=3 ) -- 0x1111 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x09c4, trans_y=(vf40)0x04b0, trans_add_x=(vf20)0x0000, trans_add_y=(vf10)0x0000, flag=(flag)0xf0 ) -- 0x111d 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0028, g=(vf40)0x0000, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x1128 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x1137 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x113f 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=1, number_of_sprites=2, wait=50, ttl=1 ) -- 0x1147 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0016, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0016, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1151 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x02bc, acc_x=(vf40)0x0000, acc_y=(vf20)0xffec, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1160 0xfe
        -- 0xFE93( s_wait=1, var2=70, sprite_id=18, var4=0, var5=0 ) -- 0x116f 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x012c, trans_y=(vf40)0x00fa, trans_add_x=(vf20)0x0018, trans_add_y=(vf10)0x0012, flag=(flag)0xf0 ) -- 0x117b 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x006e, b=(vf20)0x006e, r_add=(vf10)0xfffe, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x1186 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x1195 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x119d 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=2, number_of_sprites=1, wait=30, ttl=1 ) -- 0x11a5 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0x0000, y=(vf40)0xfff6, z=(vf20)0x0000, speed_x=(vf10)0xffce, speed_y=(vf08)0x0019, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x11af 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x4e20, acc_x=(vf40)0xfc18, acc_y=(vf20)0x00c8, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x11be 0xfe
        -- 0xFE93( s_wait=1, var2=20, sprite_id=2, var4=0, var5=0 ) -- 0x11cd 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0032, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0001, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x11d9 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0050, g=(vf40)0x0046, b=(vf20)0x0050, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x11e4 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=860 ) -- 0x11f3 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x11fb 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=3, number_of_sprites=7, wait=50, ttl=32767 ) -- 0x1203 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x120d 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0000, acc_y=(vf20)0xff38, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x121c 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=4, var4=1, var5=0 ) -- 0x122b 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x0011, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x1237 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0078, g=(vf40)0x003c, b=(vf20)0x000a, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x1242 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x1251 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x1259 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=4, number_of_sprites=1, wait=60, ttl=32767 ) -- 0x1261 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0014, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x126b 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x127a 0xfe
        -- 0xFE93( s_wait=4, var2=10, sprite_id=4, var4=0, var5=0 ) -- 0x1289 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x03e8, trans_y=(vf40)0x01f4, trans_add_x=(vf20)0x003c, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x1295 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x002d, b=(vf20)0x0000, r_add=(vf10)0x0000, g_add=(vf10)0x0000, b_add=(vf10)0x0000, flag=(flag)0xfc ) -- 0x12a0 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=2, rot_z=0 ) -- 0x12af 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x12b7 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=5, number_of_sprites=5, wait=60, ttl=32767 ) -- 0x12bf 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0011, z=(vf20)0x0000, speed_x=(vf10)0xffd8, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x12c9 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x03e8, acc_x=(vf40)0x0096, acc_y=(vf20)0xfe0c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0005, rand_speed=(vf04)0x0005, flag=(flag)0xfc ) -- 0x12d8 0xfe
        -- 0xFE93( s_wait=5, var2=20, sprite_id=4, var4=0, var5=0 ) -- 0x12e7 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0064, trans_y=(vf40)0x0064, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x001e, flag=(flag)0xf0 ) -- 0x12f3 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x003c, g=(vf40)0x003c, b=(vf20)0x003c, r_add=(vf10)0xfffd, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x12fe 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x130d 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x1315 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=6, number_of_sprites=10, wait=80, ttl=32767 ) -- 0x131d 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x000a, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x000a, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1327 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x07d0, acc_x=(vf40)0x0000, acc_y=(vf20)0xff9c, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1336 0xfe
        -- 0xFE93( s_wait=4, var2=30, sprite_id=3, var4=1, var5=0 ) -- 0x1345 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x0050, trans_y=(vf40)0x0050, trans_add_x=(vf20)0x0014, trans_add_y=(vf10)0x0014, flag=(flag)0xf0 ) -- 0x1351 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x0082, g=(vf40)0x005a, b=(vf20)0x001e, r_add=(vf10)0xfffc, g_add=(vf10)0xfffd, b_add=(vf10)0xfffd, flag=(flag)0xfc ) -- 0x135c 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=0, rot_z=0 ) -- 0x136b 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x1373 0xfe
        -- 0xFE90_ParticleInitBase( particle_id=7, number_of_sprites=3, wait=50, ttl=1 ) -- 0x137b 0xfe
        -- 0xFE91_ParticlePos( x=(vf80)0xffc4, y=(vf40)0x0014, z=(vf20)0x0000, speed_x=(vf10)0xffc4, speed_y=(vf08)0x0014, speed_z=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1385 0xfe
        -- 0xFE92_ParticleSpeed( speed=(vf80)0x0000, acc_x=(vf40)0x0000, acc_y=(vf20)0x0000, acc_z=(vf10)0x0000, rand_start=(vf08)0x0000, rand_speed=(vf04)0x0000, flag=(flag)0xfc ) -- 0x1394 0xfe
        -- 0xFE93( s_wait=2, var2=50, sprite_id=2, var4=0, var5=0 ) -- 0x13a3 0xfe
        -- 0xFE94_ParticleTranslation( trans_x=(vf80)0x02bc, trans_y=(vf40)0x012c, trans_add_x=(vf20)0x001e, trans_add_y=(vf10)0x000a, flag=(flag)0xf0 ) -- 0x13af 0xfe
        -- 0xFE95_ParticleColour( r=(vf80)0x001e, g=(vf40)0x0028, b=(vf20)0x0028, r_add=(vf10)0xffff, g_add=(vf10)0xffff, b_add=(vf10)0xffff, flag=(flag)0xfc ) -- 0x13ba 0xfe
        -- 0xFEA5_ParticleRenderSettings( use_speed=1, settings=1, rot_z=0 ) -- 0x13c9 0xfe
        -- 0xFEBD_ParticleSpawnSettings( settings=1 ) -- 0x13d1 0xfe
        -- 0xFE96_ParticleCreate() -- 0x13d9 0xfe
        return 0 -- 0x13db 0x00
    end,

    script_0x05 = function( self )
        -- 0xFE97_ParticleReset( all=0x00 ) -- 0x13dc 0xfe
        return 0 -- 0x13df 0x00
    end,

}



Entity[ "12" ] = {
    on_start = function( self )
        -- 0xBC_EntityNoModelInit() -- 0x13e0 0xbc
        -- 0x2A() -- 0x13e1 0x2a
        return 0 -- 0x13e2 0x00
    end,

    on_update = function( self )
        return 0 -- 0x13e3 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x13e4 0x00
    end,

    on_push = function( self )
        return 0 -- 0x13e4 0x00
    end,

    script_0x04 = function( self )
        -- 0xF4() -- 0x13e5 0xf4
        return 0 -- 0x13e7 0x00
    end,

    script_0x05 = function( self )
        -- 0xD0() -- 0x13e8 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0002, flaf=0x41 ) -- 0x13f3 0xf5
        -- 0x9C() -- 0x13f7 0x9c
        return 0 -- 0x13f8 0x00
    end,

    script_0x06 = function( self )
        -- 0xD0() -- 0x13f9 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0003, flaf=0x41 ) -- 0x1404 0xf5
        -- 0x9C() -- 0x1408 0x9c
        return 0 -- 0x1409 0x00
    end,

    script_0x07 = function( self )
        -- 0xD0() -- 0x140a 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0004, flaf=0x41 ) -- 0x1415 0xf5
        -- 0x9C() -- 0x1419 0x9c
        return 0 -- 0x141a 0x00
    end,

    script_0x08 = function( self )
        -- 0xD0() -- 0x141b 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0005, flaf=0x41 ) -- 0x1426 0xf5
        -- 0x9C() -- 0x142a 0x9c
        return 0 -- 0x142b 0x00
    end,

    script_0x09 = function( self )
        -- 0xD0() -- 0x142c 0xd0
        -- 0xF5_DialogShow3( dialog_id=0x0006, flaf=0x41 ) -- 0x1437 0xf5
        -- 0x9C() -- 0x143b 0x9c
        return 0 -- 0x143c 0x00
    end,

}



Entity[ "13" ] = {
    on_start = function( self )
        return 0 -- 0x143d 0x00
    end,

    on_update = function( self )
        return 0 -- 0x143d 0x00
    end,

    on_talk = function( self )
        return 0 -- 0x143d 0x00
    end,

    on_push = function( self )
        return 0 -- 0x143d 0x00
    end,

}



