# Changelog

v0.8 - 05/12/2024

- Updated inventory icon for MP5: The inventory icon for the MP5 has been replaced with one that better matches the world model used by the OSRM mod.
- Restored vanilla behavior: Several functionalities have been restored to align with the original game experience:
  - Enemies are now displayed on the minimap.
  - NPC detection sounds are audible again on the PDA.
  - The HUD now displays the NPC counter, ammo counter, and distance task counter.
  - The minimap shows the objective marker and red hit indicator.
  - The HUD displays the NPC counter indicator.
  - Binocular functionality has been restored, allowing you to tag NPCs and receive sound notifications upon detecting them.
- Fixed trader menu scrollbar behavior: An issue causing scrollbars to be constantly displayed in trader menus, even when unnecessary, has been resolved.
- Optional Feature Removal:
  - "Red hit marks invisible on HUD" option removed: This optional feature has been removed to prioritize a more vanilla experience. Players will now see red hit markers on the HUD as intended.
  - "Alternative HUD" option removed: In keeping with the focus on a vanilla experience, the default SOC HUD layout has been reinstated. This change removes modifications previously implemented to achieve a HUD similar to Clear Sky and Call of Pripyat.
- Visual Tweaks:
  - Adjusted vanilla colors for PDA stash messages: The colors used for PDA messages displayed on the HUD when finding or emptying stashes have been adjusted to better match the standard vanilla color scheme used for other PDA messages.

v0.7 - 04/25/2024

- Fixes:
  - Fixed incorrect SEVA Suit texture (stalker_scien.ogf).
- Gameplay Adjustments:
  - Restored default grid cell size to match vanilla game.
  - Reverted weapon names to vanilla.
  - Added Sleeping Bag feature: Allows players to sleep anywhere in the Zone using this item.
  - Increased vodka's radiation cure by ~40% based on user feedback.

v0.6 - 04/13/2024

- Standardized Artifact Bleeding Restoration Rates: Several artifacts previously had inconsistencies in their bleeding_restore_speed property. This update adjusts these values to match the vanilla game.
  - Increased Bleeding: af_rusty_sea-urchin, af_rusty_kristall, af_rusty_thorn (previously +1000%, now +100%).
  - Decreased Bleeding: af_ameba_mica (previously -4000%, now -400%), af_ameba_slug (previously -2667%, now -267%), af_ameba_slime (previously -1333%, now -133%).

v0.5 - 04/01/2024

- Weight and Movement:
  - Increased weight limit before fatigue from 30kg to 35kg (matches vanilla COP and offers a more vanilla gameplay experience).
  - Increased maximum weight for movement from 50kg to 60kg (aligns with vanilla values across all three STALKER games).
- Player Character Properties (Aligned with CS/COP):
  - Adjusted movement properties (run, walk, sprint, etc.) to match CS values. These values provide a more balanced gameplay experience for the player character, as observed during testing.
  - Restored healing functionality to slightly restore health when injured, mirroring behavior found in CS and COP. The value used is consistent with COP for a balanced approach across all three games.
  - Adjusted bleeding value to the more balanced level found in COP.
  - Wound healing rate when bleeding now aligns with the more balanced value from COP.
- Neutral NPC Visual Update:
  - Reverted the model used by some neutral NPCs to the original vanilla model featuring a gas mask with disjointed lenses and an oxygen tank. This ensures a clearer distinction between these NPCs and the player character, who previously shared a similar gas mask variant.
- Player Gas Mask Expansion:
  - Updated outfit.ltx to reference five new .ogf model files designed specifically for the player character's gas mask.
  - Added the line #include "models\capture\stalker_hero_captures.ltx" to the UserData section within these new models. This ensures they inherit the appropriate properties defined in stalker_hero_captures.ltx for the player character, potentially including differences compared to NPC models.

v0.4 - 03/18/2024

- Restored more vanilla behavior for medical items and food. Changes:
  - Using medical items no longer penalizes stamina.
  - Food no longer restores stamina.
- Made red hit marks invisible on HUD from mutants and NPCs (optional feature).
- Fixed the low poly hand mesh and weapon model for TOZ-34.

v0.3 - 03/11/2024

- Disabled including stash's level abbreviation.
  - It was enabled again by mistake during the implementation of the InGameCC mod mini-update.
- Improved inventory icon for medical supplies to look more like COP (from PRP).
- Fixed medkit revive functionality for downed NPCs.
  - Resolved an issue where medkits occasionally failed to revive downed NPCs.
  - This bug primarily affected non-critical gameplay but is now fixed.

v0.2 - 03/09/2024

- Restored crouch/walk/run/sprint indicator on HUD.
- Added an optional, alternative HUD that:
  - Removes the crouch/walk/run/sprint indicator.
  - Moves the sound/endurance/visibility indicators further to the right side to look more like CS/COP.
- Disabled outfit information with personal tweaks by default.
- Added outfit information as an optional feature.
- Updated InGameCC mod mini-update for ZRP v1.07 R5RC to v0.3.

v0.1 - 03/02/2024

- Enabled automatic ammo boxing.
- Disabled per-level autosaves and using rename instead of copy.
- Enabled ZRP flashlight beam.
- Enabled reduced head bobbing.
- Enabled skipping the starting tutorial tips.
- Enabled including night music.
- Enabled quieting the starting nightvision sound and the ending nightvision sound.
- Disabled time limit for quests.
- Disabled repeatable quests.
- Enabled allowing Screw and Ivantsov to repair weapons and armor.
- Disabled including stash's level abbreviation.
- Disabled displaying clock on HUD.
- Enabled real gun names and fixed some text files related to it.
- Enabled treating zombified like normal enemies.
- Increased camera_height_factor to 0.92 (match CS/COP).
- Reduced max_item_mass (weight limit before fatigue) from 50kg to 30kg.
- Reduced max_walk_weight (maximum weight for movement) from 60kg to 50kg.
- Enabled installing xStream's grenadier.
- Enabled installing live stalker ranking support.
- Enabled the NPC ability to turn off flashlights.
- Enabled rain sound fix when changing levels.
- Enabled stopping disk I/O icon from flashing at the lower right corner of the HUD.
- Disabled Esc T TZIO chapter selection.
- Disabled Esc J level jump.
- Disabled free play at end.
- Enabled no enemy minimap spots.
- Muted NPC detection sounds on PDA.
- Hidden NPC counter number on HUD.
- Removed the empty hand cursor.
- Hidden artefact belt on HUD
- Hidden ammo counter on HUD.
- Hidden distance task counter on HUD.
- Made crosshair smaller.
- Removed some elements on minimap and HUD:
  - Minimap:
    - Direction of current objective.
    - Red hit shoot mark.
  - HUD:
    - NPC counter indicator.
    - Crouch/walk/run/sprint indicator.
- Disabled tagging NPCs through the binoculars.
- Disabled sound notification of detected NPCs through the binoculars.
- Removed nightvision from suits with closed-cycle breathing system as in COP.
- Enabled Strelok will keep his helmet on.
- Updated inventory icon to exoskeleton (icon from COP).
- Fixed the scope (and binocular) views when running the game in 16:9 resolutions.
- Fixed global map and some detailed maps on PDA.
- Enabled helicopters at CNPP no longer use rockets.
- Implemented adapted-updated InGameCC mod for ZRP 1.07 R5 RC.
- Disabled CC of sound effects in-game by default.
- Implemented Medicine Mod for ZRP compatibility and addressed audio issues:
  - Adapted Medicine Mod for seamless integration with ZRP.
  - Fixed minor audio inconsistencies related to consumable items.
  - Added long usage and sound effects for all consumable items.
- Enabled no intro movies.
- Added NatVac's sound fixes:
  - Addressed the clicks and pops in the following sounds:
    - sounds\device\metal_small_open.ogg
    - sounds\monsters\boar\boar_death_2.ogg
    - sounds\monsters\dog\hit_0.ogg
  - Removed the repeating portion of Ghost's PDA recording (only English):
    - sounds\characters_voice\scenario\yantar\ghost_pda.ogg
- Added new anomaly Post-processing-effectors (from CS).
- Revised Weapon Placement:
  - Overhauled weapon HUD placement for all vanilla weapons.
  - Adjusted iron sights, shell ejections, and fire points for improved visual consistency.
- Partially implemented "Vanilla Weapons Adjusted" mod:
  - Fixed low-poly mesh issue with SPAS-12 hand model.
  - Corrected shotgun shell ejection animation to prevent unrealistic visual effect.
  - Adjusted Groza mesh to improve visual consistency with grenade placement.
  - Addressed missing or bugged sound effects for various weapons.
  - Implemented animation changes for specific weapons.
  - Enabled sprinting with SVD, SVU, Gauss Rifle, and RG-6.
- Tweaked stalker_neytral_hood_9.ogf model:
  - Replaced gas mask with a variant featuring disjointed lenses.
  - Updated oxygen tank visuals for use without mask, converting it to a backpack.
- Enabled outfit information with personal tweaks.
- Added nightvision visual effects from CS to SOC.
- Stretched static_weapon tag in maingame_16.xml for visual consistency with vanilla.
- Set new time for NPCs and monsters to disappear (vanilla default - 36 hours).
- Added vanilla weapon textures from COP to SOC (optional feature).
- Improved inventory icon for RPG-7 (from SRP).
- Increased fire_distance (knife reach) to 1.6 as in CS.
