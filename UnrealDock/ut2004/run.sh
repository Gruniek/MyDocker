#!/bin/bash
admin=`admin`;
pass=`admin`;
./data/System/ucc-bin server DM-Rankin?game=XGame.xDeathMatch?Mutator=HUDFix.MutHUDFix_LadderMod,UTClassic.MutUseLightning,MultiDodging2k4v4.MutMultiDodging,XGame.MutNoAdrenaline?AdminName=$admin?AdminPassword=$pass ini=ut2004.ini -nohomedir
