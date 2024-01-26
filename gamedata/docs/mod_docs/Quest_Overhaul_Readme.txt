--------------------------------------------------
S.T.A.L.K.E.R. Quest Overhaul v0.9b
--------------------------------------------------
__________________________________________________

About...
__________________________________________________

This is a mod I’m working on after finally blowing 
a fuse due to S.T.A.L.K.E.R.’s crappy quest management. 
Basically, this mod removes many quest-related 
annoyances such as automatic pop-up quests upon 
entering a new level (they are now attainable via 
dialog like any other quest) and super-short intervals 
between having first completed a quest and being able 
to undertake it again (if at all). Please report any 
bugs/suggestions here:

http://www.gsc-game.com/main.php?t=community&s=forums&s_game_type=xr&thm_page=1&thm_id=12329&page=1&sec_id=16
__________________________________________________

Notes...
__________________________________________________

This mod does not require you to start a new game 
and should be compatible with any other mod which 
doesn’t include the same files as this one. This 
mod was created using the S.T.A.L.K.E.R. 1.0005 
Worldwide version patch, but should also be 
compatible with v1.0004.

Note that though starting a new game is not a 
requirement, it is strongly recommended for 
maximum functionality.

__________________________________________________

What exactly has been changed...?
__________________________________________________


******** v0.1 features: *********

- "Eliminate the camp" quests no longer pop up in your face as you enter a new level. Instead, they are attainable 
by dialog directly from the quest-giver.

- "Kill the stalker" quests no longer pop up in your face as you enter a new level. Instead, they are attainable by 
dialog directly from the quest-giver.

- The quest order for certain missions has been changed. This is solely because some of the vanilla quest orders 
made little sense with regard to their respective rewards, so I felt that altering their order was the appropriate 
move.

- The following quest types are no longer again attainable after merely a day after their completion:

* Eliminate the camp
* Find the artifact
* Kill the stalker
* Find the monster part

... In my mod, these quests are, by default, attainable after a whopping 10000 days, which is in effect equivalent 
to them only being available once. This can be changed by altering the tasK_manager.ltx file. By contrast, the 
"Defend the camp" quests are now attainable after three (3) days have passes since their initial completion.

* I have merged my Extra Missions Mini Mod with this one, meaning that the following quests have been unlocked:

- Find the perfected pistol (Sidorovich)
- Raid the bandits’ base (General Voronin)
- Destroy the controller at Yantar (General Voronin)
- Find the foreigner’s gun (Barkeep)

... And the following fixes have been implemented:

- The third Sakharov "Bring the item" quest is no longer incorrectly described as a quest to find a blind dog tail.

- The fourth Sakharov "Bring the item" quest is no longer incorrectly described as a quest to find a boar’s hoof. 
The quest is also now fixed in that despite the description stating that the player should find a blind dog’s tail, 
the game would actually look for a pseudodog tail.

- Also the "Destroy the bandit camp at the car park" quest (Sidorovich) has been unlocked as a result of removing 
its init_condition parameter.

******** v0.2 changes: *********

[*] Made some changes to the ease of use of the task_manager.ltx file (intended for modders!).

[+] Equipped the mod with a proper readme file (what you’re reading right now).

[+] Applied the changes mentioned under "v0.1 features" to all quest givers, instead of just Sidorovich as was the 
case with v0.1.

******** v0.3 changes: *********

[*] Changed all "Defend the camp" -style auto-quests such that the player does not need to return to the parent 
quest-giver after successfully "defending the camp".

[*] All quests now have a completion time characteristic to them. Some features:

- "Eliminate the camp" -type missions have time limits based on how far the quest target is situated from the quest-
giver. Basically, however many’th the area where your target is located is relative to the area where you receive 
the quest, equals to the amount of days you have to complete it.

- The first "Find the artifact" quest will have a completion time of no less than 3 days, and the rest are defined 
in accordance to the difficulty of obtaining the artifact. A Night Star for example (which is the rarest you will 
encounter, and will hence have the highest completion time) has a completion time of 7 days, i.e. one week.

- All "Kill the stalker" quests have a completion time limit of three (3) days, aside from one, which is an 
exception in many other ways as well, for practical reasons.

- Monster part quests have also been altered depending on how difficult it is to obtain each type of monster part 
relative to the player’s whereabouts when receiving the quest.

[+] Unlocked Barkeep’s "Kill the Monolith stalker" quest.

[+] Unlocked Barkeep’s "Find the modified Vintorez" quest.

[+] The mod has been merged with bardak’s bug fix attempt for patch v1.0004.

******** v0.4 changes: *********

[*] Max gives you a Desert Eagle instead of a Walther for a certain side quest, as promised in the quest dialog.

[*] Made Hunter’s family "rifle" (TOZ-66) have the external appearance of a TOZ-34. (Requires new game!)

******** v0.5 changes: *********

[*] Fixed a crash which would occur if the player accepted the ecologist "Find the unique bodysuit" quest.

[*] Fixed the erroneous short description for the ecologist "Find the unique bodysuit" quest.

******** v0.6 changes: *********

[*] Implemented patch 1.0005 support (a big thanks to NatVac for letting me use the necessary files, and to bardak 
for his original versions!).

[*] You can now stash Hunter’s family "rifle".

[+] Unlocked Barkeep’s "Find the PSI suit" quest.

******** v0.7 changes: *********

[*] Fixed a crash resulting from the undertaking of the family rifle quest (thanks to Jketiynu). (Requires new game!)

[*] Fixed a random crash in the Army Warehouses, courtesy of NatVac, BobBQ and Darius6. (Requires new game!)

[+] Unlocked Lukash’s "Steal the sniper rifle" quest.

[+] Unlocked Lukash’s "Kill Duty’s security chief" quest.

[+] Unlocked Lukash’s "Kill Captain Ivantsov" quest.

[+] Unlocked Lukash’s "Kill Colonel Petrenko" quest.

[+] Unlocked Lukash’s "Kill the stalker called Barin" quest.

******** v0.8 changes: *********

[*] Fixed a minor error with the family rifle name (it is now "Hunting Shotgun" instead of "HuntingShotgun").

[*] Changed the reward for Sid’s "Find the perfected pistol" quest.

[*] Changed the reward for Barkeep’s "Find the PSI suit" quest.

[*] Changed the reward for Barkeep’s "Find the foreigner’s gun" quest.

[*] Changed the reward for Barkeep’s "Find the modified Vintorez" quest.

******** v0.9 changes: *********

[*] Made minor adjustments to some quest orders, to better coincide with the developers’ original intentions.

[*] All side quests except "Defend the camp" auto-quests now have an infinite completion time.

[*] Switched around the rewards and order of the ecologist monster part quests.

[*] Quest completion effects on faction relations have been tweaked.

[*] Barkeep’s "Kill the Monolith stalker" quest now initiates only once the player has exited the X-10 bunker.

[*] Barkeep’s "Find the modified Vintorez" quest is now only available after turning off the Yantar emission.

[*] Fixed a trade exploit with the modified Vintorez.

[+] Merged mod with Improved English Localization (=IEL).

******** v0.9a changes: *********

[*] Custom text portions are now in separate files. This makes merging easier, adding to modularity.

[*] Fixed a trade exploit with the PSI suit.

[+] Added Repair Mod compatibility (which was removed by the text file change)

[-] Removed IEL from mod.

******** v0.9b changes: *********

[*] Fixed a CTD caused by a missing file.

__________________________________________________

Installation...
__________________________________________________

1.) Navigate to your S.T.A.L.K.E.R. root directory (default: C:\Program Files\THQ\S.T.A.L.K.E.R. - Shadow of Chernobyl\)

2.) Open the file "fsgame.ltx" with a text editor such as Notepad, and edit the line:

	$game_data$   		= false|	true|	$fs_root$|		gamedata\

... Such that it looks like the one below:

	$game_data$   		= true|	true|	$fs_root$|		gamedata\

All you have to do is change the "false" to "true".

3.) Extract the contents of the .zip file this readme was in, to your S.T.A.L.K.E.R. root directory.

__________________________________________________

Uninstallation...
__________________________________________________

Simply remove all of the files created/changed by this mod.

__________________________________________________

Known bugs...
__________________________________________________

- Barkeep’s mutant part quests will sometimes have the wrong short description when you click to view them in 
your PDA. This bug is being looked into.
__________________________________________________

Credits... (In no particular order)
__________________________________________________

- Me (Decane)
- Bardak for his excellent bug fixes
- Barin for his invaluable scripting advice
- Fatrap for his helpful modding advice
- NatVac for his helpful scripting/modding advice, 
and for allowing me to use the files necessary for 
1.0005 support
- Shadow State for testing and reporting errors
- Jketiynu for testing and reporting errors
- Paul Jay for acknowledging the Vintorez exploit
- Victim for his support
- All the other guys and gals at the GSC forum
- GSC for making the game

__________________________________________________

Version history...
__________________________________________________

v0.9b: Eleventh release; bug fix relz.
v0.9a: Tenth release; bug fix relz.
v0.9: Ninth release; public beta.
v0.8: Eigth release; public beta.
v0.7: Seventh release; public beta.
v0.6: Sixth release; public alpha.
v0.5: Fifth release; public alpha.
v0.4: Fourth release; public alpha.
v0.3: Third release; public alpha.
v0.2: Second release; public alpha.
v0.1: First release; public alpha.

__________________________________________________

Licence...
__________________________________________________

This mod or any of its portions may be used freely 
for any non-profit projects, as long as credit is 
given to those responsible for the portions used.
