SOME FIXES ARE EFFECTIVE IN THE NEW GAME ONLY. THIS IS INTENTIONAL.


[Introduction]
This mod is an attempt to fix some of the bugs in S.T.A.L.K.E.R.
version 1.0004 (only!). It keeps the original gameplay and balance.

Below is the main list of the changes. It lacks the more detailed
technical description for the reason of the defect. Please see the
Russion version for this.

1) Fixed the random crash in Pripyat. Reason: the error in the function
that checks if npc's community is accepted into the gulag.

2) Fixed the occasional impossibility to complete the quest to protect
the border near the army warehouses from the monsters. Reason: the
error in the function that calculates the gulag state.

3) Fixed the impossibility to complete the Lukash's quest to destroy
the Skull's group in Army warehouses if there were game loads during
the battle. Reason: kill counter in the Skull group was not saved.

4) Fixed the empty gulag in Escape with bloodsucker activated after
the Agroprom documents quest. Reason: similar misprints in the accepted
communities list.

5) Fixed the problem when player becomes an enemy to everybody if
he/she kills the stalker from the hostile faction in the Bar location.

6) Fixed the occasional impossibility to complete the quest to destroy
the bloodsucker's lair in Army warehouses. Reason: another offline
mutant due to the error in function that checks npc community.

7) Fixed the problem in the Escape location when the stalkers from
the novice camp do not take cover before Mercenaries attack.

8) Fixed the defect in state_mgr.script. Credit goes to Red75.

9) Fixed the problem with "jumping" reputation. Credit goes to NatVac.

10) Implemented the workaround for the death of stalkers when many of
them are spawned in the same point at the same time.

11) Prevented the possibility to get the stash information from the
same body multiple times.

12) Prevented the possibility to lost the stash contents in the
following scenario:
a) player gets the information about the stash, which is in
the online mode;
b) player saves the game and loads it again;
c) the stash were not switched to offline between a) and b).

13) Prevented the possibility to "repair" the weapon by giving the
gun to the novice stalker then killing him.

14) Text changes for the Russian localization only. Ignore this for
the different versions.

15) Implemented the output of the abort() message in the game console.


The additional changes are available only when the all.spawn file is
installed:

16) Implemented the correct fix for the problem with dead stalkers
in the camp fires. Reason: missing kamp_N_task way paths.

17) Fixed the omission of the Mercenaries raid in the Army Warehouses
location. Reason: the way paths were just removed in the 1.0004 patch.

18) Fixed the empty controller gulags in Pripyat. Reason: misprint in
the all.spawn.

19) Fixed the empty boar gulag in Garbage. Reason: the incorrect
activation condition.


[Installation]
Copy gamedata into the folder of the game. Files in the
gamedata\config\text\rus folder can be safely deleted.


[Known problems]
TBD


[Disclaimer]
It is unlikely I will respond to any requests to rework these changes
and fixes, because it is a kind of "personal" mod. Therefore, feel free
to use the mod or its part (excepting the string_table_enc_weapons.xml)
at your will.


==================================
Translation of the Russian readme:

IN THIS VERSION LITTLE WAS TESTED!

[ introduction ]

this modification is the attempt to correct some errors of game S.T.A.L.K.E.R. of version 1.0004 (only!), it is simultaneously old to completely preserve original concept and balance of game.

Basic list of the changes

 1) the exit CTD in Pripyat without the visible reasons is corrected. It is caused by the error into gulag_.pripyat.checkCommon(), as a result of which into gulag pri_.monolith are assigned the mutants, whereas there must be only stalkery from the group monolith. Strictly exit CTD occurs with the loss of this mutant, moreover it is not necessary from the hands of player. Moreover, since this gulag always in regime online, exit CTD can occur even if player it is located far.

 2) is corrected the impossibility to carry out task "to protect barrier from the mutants". In gulag_.military.check_.mil_.monster_.state() is counted the entire population of gulag, but not only that which already arrived. But since the gulag of mutants mil_.monster is supplemented directly during the destruction (which is normal), its raid never ceases and fulfillment does not include.

 3) is corrected the impossibility to complete the task Of lukasha with respect to the destruction of the group of debt on the army depots, if between the loss of the soldiers of debt there was load or passage on another map. It is caused by the fact that the counter of killed dolgovtsev mil_.dolg_.killed does not remain and is not restored.

 4) is corrected the absence of gulag with krovososom on the cordon (is activated after player returns documents from NII - SCIENTIFIC RESEARCH INSTITUTE By agroprom). Krovososy not were permitted in smart_.terrain_.presets.ltx for the cordon.

 5) it is corrected the problem, when two gates of debt do not become enemies with the attack by the player of stalkerov on the location of bars reason in the incorrect names of the corresponding gulags in xr_.effects.bar_.territory_.logic(). Change is unobtrusive, since these gulags are transferred into offline, when their player does not see (made this, most likely, for purposes of an increase in the productivity). Is simultaneously removed reaction to the attack by the player of stalkerov from deliberately hostile to debt groupings.

 6) is corrected the impossibility (sometimes) to complete tasks with respect to the destruction of krovososov on the army depots. It is caused by the fact that function gulag_.dark_.valley.checkMonster() always returns false, that it does not give to add into gulag val_.sos of krovososa val_.sos_.bs, which "will sleep" (i.e. it is located in offline) to the approximation of player to injured stalkeru on the second floor of building near the gasoline pump. Accordingly, when somewhere elsewhere is freed place under krovososa, game can send there precisely this "invisible" mutant.

 7) is corrected problem with stalkerami from the camp of the novices on the cordon, which sit in the ambushes even after the reflection of the attack of mercenaries. Problem is caused by incorrect condition in function gulag_.escape.load_.states() for gulag esc_.lager. Furthermore, are added predicates for the works of gulag esc_.killers, in order to avoid its senseless filling after passage in offline.

 8) is corrected defect in state_.mgr.script, obtained and corrected Red75.

 9) problem with the skipping reputation is corrected. It is caused by the incorrect use change_.character_.reputation() in task_.manager.script. The solution found NatVac.

 10) is gone around the reason for the loss of stalkerov in the places of accumulation. Something not so with the algorithm of raskidyvaniya of stalkerov with their transfer from offline into online at one point.

 11) is excluded the possibility of obtaining the information about the hiding-place of more than one time from killed stalkera. Earlier this property was ensured only in the limits of one location.

 12) the possibility of the loss by the hiding-place of its contents in the following situation is excluded: a) player obtains reference to the hiding-place, which at this moment is located in online; b) player remains and loads; c) between A) and b) not there were transfers of the hiding-place into offline at least of times.

 13) is excluded the possibility of an improvement in the state of weapon by the method of removal the of previously tossed up stem from the body of killed stalkera.

 14) is integrated slightly changed Weapon_.Real_.name_.mod_.v1.rar with gameru.net (I do not know, who made it; or he from the early assemblings?) and are repaired the names unique weapon in the dialogues.

 15) communication abort() now is derived into the play console. Therefore in the ravine there will be only more meaningful information about the exit CTD. In the case of installation gamedata\.spawns\.all.spawn are accessible the additional changes:

 16) is corrected problem with the entry of stalkerov into the camp bonfires.

 17) is corrected the absence of the raid of mercenaries from the farmstead on the army depots, which must attack the small group of stalkerov. The appropriate way instead of the correction into 1.0004 simply was cut out.

 18) the absence of two gulags of controllers in Pripyat is corrected (one in the building of auto depot, another in kindergarten). Is caused by misprint in the list of the permissible mutants (controllers instead of controller) in appropriate smart terrain in all.spawn.

 19) is corrected the absence of gulag gar_.smart_.boars on the dump.

 [ installation ]

 to copy gamedata into the folder with the established game. all.spawn it is possible not to establish generally or to replace by another. The correctness of work with the combination with other modifications is not guaranteed (especially with the incorrect combination). For facilitating the task you look those inserted stk10004_.bfa_.gamedata.diff and stk10004_.bfa_.spawns.diff

 [ Otmazka ] in the essence is this modification "under itself" ("as is"); therefore about the introduced problems or the unnecessary changes to personally to you report is possible on the forum of game, but it does not be worth hope that they will be ispravleny/ubrany or generally for some reaction. In view of this, to use this modification (besides file string_.table_.enc_.weapons.xml, for the indicated above reason) is possible as conveniently and where it is convenient within the framework of the limitations of the developer of game to the modes, if the same there are.
