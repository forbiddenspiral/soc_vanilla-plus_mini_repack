
  ZRP 1.07 R5 RC -- A Release Candidate

=====================================
Introduction:
=====================================
Hi.  I'm NatVac, your host for this readme.  Welcome to The 
Zone Reclamation Project, version 1.07.

Primarily a community bug-fix patch mod for STALKER, Shadow of 
Chernobyl, the ZRP is also a very configurable set of tweaks 
and mini-mods to reduce annoyances and enhance your gameplay 
experience -- without changing the gameplay itself. 

Additional gameplay-changing mini-mods are included for your 
convenience, but these are not enabled by default.  Examples 
include a sleeping bag, AI tweaks and additional side quests, 
enemies, items and weapons.

A warning, however:  The 1.07 version of the mod is not as 
mod-friendly due to the nature of the extensive changes.  You 
should not install this mod without reading through this file 
completely and heeding the cautions it presents.


Why is ZRP 1.07 not that "mod-friendly"?

The changes are pervasive, extensive, and confusing to mod 
mergers, be they human or smart software.

For example, we've consolidated weapon and armor text data, 
moving it to the files best suited for it.  (One suit of armor 
was described in a multiplayer support file.)  I did this to 
permit the easier configuration of items.

There are also massive changes to quite a few of the game's 
systems.  The task manager, the respawner, the camp manager and 
the NPC chatter mechanism have been seriously revised; a 
comparison of vanilla and ZRP versions will flag almost 
everything as changed.

And there are some removals of useless or broken code, like 
NPC schemes, which a mod merger might put back in.  Not good.

There is a replacement ui_icon_equipment.dds file which supports 
the fixed soldier suit, an easier-to-distinguish pseudodog tail, 
and a few common mini-mods like the ABC sleeping bag mod, Save's 
Carry Mod, and Decane's Quest Overhaul mod, as well as the 
Artifact Swap mini-mod.  But many other mods have their own 
versions of this file, and they will not be compatible.


How "vanilla" is the result if you've made so many changes?

To better satisfy the "pure vanilla" aficionados, this version 
of the mod is more vanilla than its predecessors.  If you are 
used to the ZRP tweaks, you will have to re-enable most of them. 
There is also a Vanilla.cfg configuration for use with the 
optional Modifier program to restore even more of the original 
behavior, including some exploits.

The annoying NPC chatter is back.  It should be much more 
tolerable in ZRP 1.07 with the new NPC Chatter Control feature. 
You can still disable certain sound annoyances with the Modifier 
utility.


=====================================
Purposes of this modification:
=====================================
Fix the script engine and configuration bugs where possible. 

Address known limitations of the game as much as possible.

Correct English language errors and sense.

Increase useability and add functionality.

Minimize the micromanagement and mouse movement in the game.

Provide a basis for other mods.


=====================================
Requirements:
=====================================
STALKER Shadow of Chernobyl installed and patched to at least 
version 1.0004.  Versions 1.0005 and 1.0006 work as well. 
Steam currently uses patch 1.0006.

This version is currently packaged for English.  Running 
with another language might result in some items and tasks 
showing reference names instead of the actual text.
Work has been done for internationalization and other 
languages will be directly supported in a future version.

There is more work coming, primarily improved documentation.


=====================================
Notable features added since ZRP 1.05 Test R10:
=====================================
* Better UI support, especially for widescreen. (MrSeyker)
* Better 1.0006 compatibility. (NatVac, bamah)
* No more sticky location markers. (Mr. Fusion)
* Improved task/LC marker management. (Mr. Fusion, NatVac)
* All underground task/secret markers visible. (NatVac)
* Level-unique autosaves. (NatVac)
* New level changers added as you go. (NatVac)
* Permanent radiation bug cured with save/reload. (NatVac)
* Psi-emission effects correctly maintained on saves. (NatVac)
* Improved respawn management (RPM 1.1). (NatVac)
* Improved camp management. (NatVac)
* Improved stealth across saves, a tiny bit. (NatVac)
* New NPC chatter control and sound management. (NatVac)
* Cases/crates have improved item spawning behavior. (NatVac)
* Esc, F5 or Esc, F6 level-based quicksave. (NatVac)
* ZRP Support Utilities for spawning/troubleshooting. (NatVac)
* Debug support greatly enhanced. (NatVac)
* More than twice as many Modifier entries. (NatVac)
* Many, MANY more bugs squashed.* (various contributors**)
* Sleeping bag, AIPack, Rulix options. (see below)

*Please see docs\ZRP_Changes_*.txt files for details.  Modders 
should also see the diffs\ subdirectory files.


=====================================
Included mods:
=====================================
Non-optional:
* bardak's "Patch 1.0004 bug fix attempt" (the mod's foundation)
* Respawner Control (NatVac)
* Widescreen inventory tweak (nandersen)
* Dynamically-added Level Changers (NatVac from bardak/IG2007)
* PSZ-7 soldier outfit support (ZaGaR and Storm Shadow State)
* Bug-fix parts of jrmy's New Weapon Positions (jrmy, MrSeyker)

Optional, enabled by default:
* Autosaves are now renamed or copied for each level (NatVac)
* EggChen's revamped particles.xr (remove if you want to use his 
  Particle Enhancement mod)
* GP37 (G36) with grenade and silencer support (SiriusStarr)
* The Zone Is Open, with free play (NatVac with TSL16b dialogs)
* Intra-level Teleport (NatVac)
* HUD Time-of-day (NatVac)
* Better Inventory/Trade/Search Screens (NatVac) -- more below
* Longer Quest Time Limits, Etc. (NatVac)
* NPC Chatter Control (NatVac)
* Show Reward Mini Mod v1.03 for ZRP (onionradish)
* Unwanted Side Task Rejection (NatVac)
* WideScreen Inventory Size (Raw)

Optional, not enabled by default:
* Stalkers Are Not Blind (Red75, with NatVac tweaks)
* Dunin Ammo Aggregation (IG2007)
* Screw (Freedom) Repair (NatVac from Shebuka idea)
* Captain Ivantsov (Duty) Repair (NatVac/Mr. Fusion from BobBQ 
  solution to a motiv-8 suggestion)
* Explosives Carry (NatVac from NoMore info)
* Fire Dynamic Lighting Support (EggChen)
* Freedom Vs. Duty (MrSeyker)
* Real Gun Names (MrSeyker)
* Quest Overhaul (Decane with NatVac update), with icon image
* The MonoMartyrs Seek Revenge (NatVac)
* Artifact Swap (NatVac)
* Outfit Protection Info (NatVac)
* MP5 retexture, for a special weapon (Warpig)
* No Head-Bobbing (PiIsARational via Paddywak)
* Sleeping Bag (Speed/Ab@dDon/fatrap/NatVac)
* AIPack (xStream tweaked by ZaGar, NatVac, BobBQ)
* xStream's Grenadier (adapted by ZaGaR)
* Rulix (Bak) AI Additions (adapted by NatVac/BobBQ)
* Trade/Search Screen improvements (NatVac, fitzroy_doll)
* ZRP Debug (NatVac)
* ZRP Support Utilities (NatVac)

The Modifier program (NatVac) is an optional executable 
provided to allow the easy configuration of many aspects of the 
game.  There are over 120 entries with one to five configurable 
items each, distributed among thirteen configuration files.

To see how to configure the game without the Modifier please 
read the Modifier's documentation.


=====================================
Indications:
=====================================
For use by modders, experimenters, and folks who want 
essentially vanilla but don't want to stop playing.

Not for use by Nymlits.  May be modded as needed, but care must 
be exercised.  No warranty is expressed or implied.  Discontinue 
use if irritation develops.

FPS fans:  Start with the Modifier's FirstPersonShooter.cfg. 
Also consider the Alt1 actor.ltx in the Actor.cfg configuration. 
Find more tweaks in the _custom_items.ltx and unique_items.ltx 
files; details in Tweakables.txt in the docs\ subdirectory.


=====================================
New to the ZRP?  
=====================================

    * * * *  First Time Players, Please Note  * * * *

If this is your first time playing STALKER, you should re-enable 
some vanilla features to know why they were disabled in the 
first place. 

The ZRP has a few default settings to reduce the complaints many 
make and to enhance the game experience without changing 
gameplay. However, you might want to suffer a bit first. To get 
almost pure vanilla out of the 1.07 version of the ZRP, run the 
Modifier program.  Select the Vanilla.cfg configuration from the 
dropdown combobox in the upper left.  Click on each entry in the 
left-hand list, click the Default button for that entry, then 
click Apply.  Do that for every entry except the "Trade and 
Search Screens" entry; for that one select the "Vanilla Screens" 
radio button and click Apply.

Before adding any external mini-mods, you should first check to 
see if there is an option to do what you want already in the ZRP 
package.  Examples include the abilities to disable or reduce 
head bobbing, use real gun names, get weapon and outfit repairs, 
modify quest time limits (and much more), change carry weight 
capacity, view outfit statistics before you buy, use a sleeping 
bag, etc. 

Please read other ZRP documents as well; there are useful tips 
mentioned there.  If you are using an existing vanilla save, 
consider docs\Vanilla_AllSpawn_with_ZRP.txt (some spoilers) 
to see what differences you might be encountering versus 
starting a new game with the ZRP.

If you have a crash or other problem, please see the other text 
files in the gamedata\docs\ subdirectory first to help you 
resolve the problem.


=====================================
If Starting a New Game:
=====================================
I highly recommend turning off the radiation whiteout effect. 
See the Radiation Whiteout entry in the Modifier's _ZRP 
configuration.

If this is not your first game, examine the options in the New 
Game Tweaks entry in the same configuration which can save you 
some time.

Almost all of the Modifier-configurable entries can be changed 
at any time.  See the Modifier's documentation for details.


=====================================
Installation instructions:
=====================================
You do NOT need to start a new game if installing this over a 
vanilla (unmodded) game, or if you were using a previous version 
of the ZRP.  The sole exception might be an incompatibility with 
a previous Quest Overhaul version in ZRP 1.05 Test R10.  If you 
did not use it, you should be okay.  If you did, I strongly 
recommend starting a new game and using TZIO to recreate your 
existing game.

SMM is no longer supported due to the numerous complex changes.


Manual installation:

It is strongly suggested that you first rename your current 
gamedata\ subdirectory (if there is one in your STALKER 
installation directory) to avoid any UAC or virtual store 
problems.

Drag/drop the gamedata\ directory in the ZRP 1.07 R5 archive 
into your STALKER installation directory. (The diff\ directory 
is for modders.)

If you were using an earlier version of the ZRP, you can 
carefully merge any changes you made to the older version with 
1.07 R5 using a good merging tool like WinMerge. Note that the 
ZRP since 1.07 R3 has modified the way custom weapons and items 
are supported.

If you were using graphics, weather or sound mods you can also 
merge them with ZRP 1.07 R5.  ZRP is not suitable for merging 
with big mods unless you are an experienced modder.

Before you merge ZRP with small mods or mini-mods, check to 
see if that functionality is already available as a ZRP option.

If you have not installed any mods previously, you should edit 
fsgame.ltx and change any occurrence of "false" on the second 
line to "true" (without the quotes) and save your change. 
The line will look like this when you are finished:

$game_data$   		= true|	true|	$fs_root$|		gamedata\

Finally, use the Modifier program or follow the info in the 
Modifier config files to adapt the game to your preferences. 
The number of choices has more than doubled since ZRP 1.05 R10. 
You can find the help text files in gamedata\modcfg\.  They can 
also be read from within the program.

Verify installation: The game's version as reported on the main 
menu should now include ZRP 1.07 R5.


=====================================
Uninstallation:
=====================================
Just delete or rename the gamedata subdirectory.

Note that all saves made with this version of the ZRP will not 
be compatible with vanilla or other mods without ZRP support.


=====================================
ZRP 1.07 In-Game Main Menu functions:
=====================================
While in game, momentarily press Esc to return to the main menu. 
There you can execute these additional functions:

S - Save a quick named save, of the form "levelname_datestamp". 
This is the same as the "Quick named save" button.

F6 (or F5) - Save a level snapshot, essentially a level-based 
quicksave named "levelname_snapshot".  Unlike the Esc S save, 
these will overwrite any existing "levelname_snapshot" files. 
This one is highly recommended, as it permits a named save for 
each level, so if your quicksave has a problem, you can always 
load a save from another level.

Both of the above can have custom prefixes to identify your 
games.  See the New Game Tweaks entry in the Modifier's _ZRP
configuration.

T - This brings up the dialog for TZIO (The Zone Is Open) 
chapter selection.  You can advance your progress in the game 
at any time, or start free play by completing all the tasks. 
See docs\TheZoneIsOpen.txt for details.

J - This opens the Intra-level Jump facility for quick travel 
across the level.  Read docs\TheZoneIsOpen.txt for info.

F1 - If the feature is enabled (default), this injects the 
Marked One with an antirad dose if one is available in your 
inventory. 

The following are not enabled by default:

D - If ZRP debug is enabled, this enables the display of 
debugging info on screen, as well as serving as a priming key 
for various debug functions.  You can fix problems, teleport 
through doors, view damage info on NPCs/mutants as you shoot 
them, store all loose weapons on bodies, pull stuff out of the 
ground, remove anomalies, add level changers, remotely search 
NPC/mutant bodies and grab their contents, speed up/slow down 
time, determine NPC health and heal the walking wounded, bump 
hidden bodies and crates out of the ground, jump to bodies and 
wounded, teleport to rooftops or below the level, etc., etc. 
See docs\DebugSupportChanges.txt.

Z - If the feature is enabled, you will see the ZRP Support 
Utilities (ZSU) dialog, AKA The Modolith Wish Granter.  If the 
corresponding z_*.script files are copied up from the optional\ 
subdirectory (you can use the Modifier's SupportUtilities 
configuration to do this), you can do the following:

* Spawn stuff, even an invulnerability artifact that you can 
equip in bad situations, then remove for normal play.  No need 
for a trainer.

* Execute script commands inside the game.  Set variables, run 
functions, and even watch their values change on the HUD in 
the game.

* Repair broken doors: the door to Sid the Cordon trader, the 
Dark Valley doors (to X18, Shaggy's cell, bandit armory), the 
Yantar scientist's bunker doors, as well as rarer instances of 
broken doors on other levels.  If they keep breaking, you can 
simply remove them.

* Repair weapons and armor, force NPC bodies to yield secrets, 
mark NPCs and items in your PDA (can help you find the Storming 
Obokan/Abakan), give yourself money, set/reset info_portions, 
join or leave certain factions, patch up faction relationships 
-- even in the Bar -- and become friends with them if desired, 
and more.

The ZSU stuff is recommended for emergencies or mod development 
only, as it can seriously affect you or your game to the point 
of corrupting either or both.  Save before using a feature!

Install only what you need via the Modifier.  For instructions, 
see docs\ZRP_SupportUtilities_Manual.txt.


=====================================
**Credits:
=====================================
The seminal "bug fix attempt", the foundation for the ZRP, was 
created by bardak.

ZRP "enhancements and additional fixes" authors, contributors, 
and troubleshooters include:

    Alex-Tommy, Antarctico, artistpavel, bamah, bardak, barin, 
    BobBQ, Cpt. Borovich, castl, DC-, Decane, dezodor, Don Reba 
    (including LTX Checker corrections), Eggchen, ERForman, 
    fatrap, fitzroy_doll, IG2007, jrmy (for some weapon 
    positions), Kosmokrator, Lijenstina, lowenz, motiv-8, 
    Mr. Fusion, MrSeyker, notanumber (nandersen), NatVac, 
    omero, onionradish (for Show Reward minimod), 
    PiIsARational (for initial head-bob fix), Racemate, Raw, 
    Red75 (for SANB), Riddle, rkr5, romulous, Russo (russao), 
    Rulix/Bak (for Rulix AI), silverpower, SiriusStarr, 
    Snowball (Simple Snow), Storm Shadow State, TSL16b, 
    Victim, weidrik, XiaNi, xStream (for AIPack), 
    ZaGaR (latific), zambien 

Language support so far provided by Alex-Tommy, Claysoft'65, 
and lowenz, although the language stuff is not yet finished.

If your name is missing from the list, please let me know so 
that I can correct the omission.

See the ZRP_Changes_*.txt files in the gamedata\docs\ 
subdirectory for specifics on contributions.  You'll note that 
some have made significant contributions to this project.

I would also like to thank the following for their comments, 
public posts, feedback and/or other useful input:

    -=Grunt=-, 300000, 5 Shots 1 Kill, Acolyte, Afterburnzz, 
    Allianxor, Alundaio, Amgot, Anaphiel, angrydog, anphrax, 
    arnoldx, Atrocious, Audioave10, BAC9-FLCL, Bangalore, 
    Beebee, belizarius, bennisboy, Bjossi, BoltZ, Brood_98, 
    BuddieBBB, busetibi, Cathmelar, Ceano, CJDavE, Claysoft'65, 
    cyberdaemon, Daemonion, Darius6, Darkh4, datoo, 
    DevochkaApokalipsisa, dex, digitalAngst, Dimitroff, Doggy, 
    DooMike, Dragunov, Drake, Eric the fish, ExoStalker, 
    Exo-4UZ, fishy_joe, fiznerpin1962, fluffy22/SetaKat, 
    ford_racer, Fredy, FreeKiller, Fulcrum, gannebamm, gl25nn, 
    Gman, Gr1ph00n, Grump642, Handyman454, Hannibal Rex, 
    HardcoreGamer63, hawk318, hawkworldwide, Iggy Hazard, 
    JBottcher, Jketiynu, Kane4, Kanyhalos, Kimmuriel, Koki, 
    kringle185, Krubarax, Kyodan, llama man, LoboTheMan, 
    Lyoko774, mart dms, MarteenDee, MattyDienhoff, Max Chill, 
    Melodic, MiNoSwe, mnn, Mr_Molecule, MtOMajorCat0311, 
    Musky Melon, narr, Nightwatch, Niphty, NoMore, OldMadMoose, 
    oldman, Paul Jay, pepe_84, Pesen, Petrov, PhoenixHeart, 
    raf256, ras2, reaver2, Redrick Schuhart, RK Roadkill, 
    Robberbaron, RoboMook, rockingmtranch, Ru Team, SacriPan, 
    Saint_Stan, Serensius, Sevis, ShadowWolf, Siro, smoq2, 
    Spaceghost, Steelyglint, Stierlitz, Stolls, 
    stormbringer951, sunzi, Tariq, Tejas Stalker, TeJJZ, 
    Teratoma, therawdeal, Three Mile Island, TKGP, Toasteroven, 
    tsiros, Tzaechireon, udm, utak3r, Victory By Default, 
    Viktor Berg, Vintar, Wolfehunter, wolfsblut_, wrathloki, 
    xRatx, yellow_helicopter, zodden, Zone Addict, 
    {imperialreign} 

Please note that some may have changed their name and/or gender 
since their addition to the lists.  Some of you on the lists 
have greatly encouraged me and I am pleased to consider you 
true friends, since you would help me move bodies. :)

The SMM-compatible icon image was contributed by nandersen.

Special thanks go to bardak and Niphty (who started it), 
ERForman and romulous (who kept it going) and my lovely, smart 
and vivacious wife (who let me live to finish this). :)


=====================================
License:
=====================================
The major portion of this work is copyrighted by GSC Game World, 
and is included here by their sufferance with the understanding 
that it will only be used with a legally-licensed copy of 
"S.T.A.L.K.E.R.: Shadow of Chernobyl". 

You are free to use this mod or portions of it for any 
non-profit use as long as you give credit to the party or 
parties responsible for the portions you use.  It would be a 
kind consideration to your mod's users to include the associated 
documentation and/or details on where they can obtain ZRP info.


=====================================
A special "heads up" notice:
=====================================

        ** This is a work in progress! **

Features are subject to change.  Be part of the creative process 
and contribute your thoughts in the appropriate threads on the 
GSC forum site.  You can even contribute scripts if they are 
useful or just cool.

Please report all bugs and make suggestions in the Mod 
Discussion section at the GSC forum:

http://www.gsc-game.com/index.php?t=community&s=forums&s_game_type=xr&lang=en

As of this release, the ZRP mod is discussed in the "ZRP - 
A joint effort in fixing S.T.A.L.K.E.R." thread there:

http://www.gsc-game.com/main.php?t=community&s=forums&s_game_type=xr&thm_id=11786&sec_id=16

Enjoy or let me know why you didn't at this GSC forum thread. 

--NatVac, 2010/09/25, 2010/10/28, 2012/05/01, 2013/04/07, 2014/05/04
