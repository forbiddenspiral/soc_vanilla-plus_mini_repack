###################
# forgottenspiral #
###################

# Before running this script, ensure that your workspace is properly configured, and 7z/git are accessible in your system/user path.

# Define workspace folders.
$workspace_folder = "$env:USERPROFILE\Documents\STALKER-TWEAKED\SOC-TWEAKED"
$project_folder = "$workspace_folder\SOC-VANILLA-MINI-REPACK"
$release_folder = "$workspace_folder\SOC_RELEASE_MINI_REPACK"

# Define the location for COP weapon textures intended for SOC.
$cop_weapon_textures_folder = "$workspace_folder\COP_WEAPON_TEXTURES_FOR_SOC\gamedata"

# List of ZRP configuration or debugging files to delete by specific extension and name.
$zrp_files_1 = @(
	".1st_slot"
	".aipack"
	".alt1"
	".alt1_5"
	".cfg"
	".controller_fix"
	# ".dds"
	".default"
	".exe"
	".flame_on"
	".for_mods"
	".fps"
	".ingamecc"
	".interrupt_start_lecture"
	".invisible"
	".just_a_dot"
	".less"
	".less_bob"
	# ".ltx"
	".ltx_arti_mm"
	".mm"
	".more_default_weather"
	".moved_buttons"
	".moved_links"
	".ncc"
	".ncc_simple"
	".new_position"
	".new_position_quiet"
	".nice_weather"
	".no_bob"
	".no_bright"
	".no_deterioration"
	".no_jam"
	".no_stats"
	".no_thunderbolts"
	".normal"
	".NPC_ammo"
	# ".ogf"
	# ".ogg"
	".old_position"
	".old_position_quiet"
	".orig_bkup"
	".orig_mm"
	".original"
	".original_5"
	".original_buttons"
	".original_main"
	# ".ppe"
	".rank_adjust"
	".rare"
	".rarer_ambient"
	".real_gun_names"
	# ".script"
	# ".snd_static"
	# ".spawn"
	".suit_stats"
	".tougherNPCs"
	".txt"
	".vanilla"
	# ".xml"
	# ".xr"
	".zrp"
	".zrp2"
	".zrp3"
	".zrp4"
)
$zrp_files_2 = @(
	"rx_addons.ltx"
	"rx_ai.ltx"
	"rx_bandage.ltx"
	"rx_facer.ltx"
	"rx_ff.ltx"
	"rx_gl.ltx"
	"rx_weapon_mgr_ws.ltx"
	"rx_weapon_mgr.ltx"
)

# Navigate to the release folder.
Set-Location $release_folder

# Set the full release version.
$release_version = "v0.1"

# Begin release process.
Write-Host "====================" -ForegroundColor Green
Write-Host "Starting..." -ForegroundColor Green
Write-Host "====================" -ForegroundColor Green

# Create a folder for the final release files if it doesn't exist already.
$final_folder = "Mini-Repack_STALKER-SOC-Edition_$release_version"
If (Test-Path -Path "$final_folder") {
	Write-host "$final_folder already exists." -ForegroundColor Green
}
Else {
	New-Item "$final_folder" -ItemType Directory -Force
	Write-host "$final_folder created successfully." -ForegroundColor Green
}
Write-Host "====================" -ForegroundColor Green

# Check if releasing is enabled or disabled.
$enable_release = "yes"

If ($enable_release -eq "yes") {
	Write-Host "Releasing is enabled." -ForegroundColor Green
	Write-Host "====================" -ForegroundColor Green

	# Clone the project folder to a temporary directory.
	git clone $project_folder "$final_folder-temporal"
	Write-Host "====================" -ForegroundColor Green

	# Remove unnecessary files from the temporal folder.
	Remove-Item -Path "$final_folder-temporal\.git" -Recurse -Force
	Remove-Item -Path "$final_folder-temporal\.gitattributes" -Recurse -Force
	Remove-Item -Path "$final_folder-temporal\.gitignore" -Recurse -Force
	Remove-Item -Path "$final_folder-temporal\CHANGELOG.md" -Recurse -Force
	Remove-Item -Path "$final_folder-temporal\README.md" -Recurse -Force
	Remove-Item -Path "$final_folder-temporal\Release.ps1" -Recurse -Force

	# Copy files from the temporal folder to the final release folder.
	Copy-Item -Path "$final_folder-temporal\*" -Destination $final_folder -Recurse -Force

	# Remove the temporal folder.
	Remove-Item -Path "$final_folder-temporal" -Recurse -Force

	# Delete ZRP configuration or debugging files based on extension and name.
	Get-ChildItem "$final_folder\gamedata" -Recurse | ForEach-Object {
		If ($zrp_files_1 -Contains $_.Extension) {
			Remove-Item $_
		}
		Elseif ($zrp_files_2 -Contains $_.Name) {
			Remove-Item $_
		}
	}
	
	# Manually delete ZRP configuration or debugging files.
	Remove-Item -Path "$final_folder\gamedata\config\optional\defines.ltx" -Recurse -Force
	Remove-Item -Path "$final_folder\gamedata\config\optional\game_levels_music.ltx" -Recurse -Force
	Remove-Item -Path "$final_folder\gamedata\scripts\optional\" -Recurse -Force
	
	# Delete empty folders.
	$tdc = "$final_folder\gamedata"
	Do {
		$dirs = Get-ChildItem $tdc -directory -recurse | Where-Object { (Get-ChildItem $_.fullName).count -eq 0 } | Select-Object -expandproperty FullName
		$dirs | Foreach-Object { Remove-Item $_ }
	} While ($dirs.count -gt 0)
	
	# Copy COP weapon textures to the optional folder if it exists.
	If (Test-Path -Path "$cop_weapon_textures_folder") {
		Copy-Item -Path $cop_weapon_textures_folder -Destination "$final_folder\optional\COP weapon textures for SOC" -Recurse -Force
		Write-Host "COP weapon textures for SOC were copied successfully." -ForegroundColor Yellow
	}
	Else {
		Write-Host "COP weapon textures for SOC folder doesn't exist." -ForegroundColor Yellow
	}
	Write-Host "====================" -ForegroundColor Green

	# Copy the Instructions and Additional Notes file.
	Copy-Item "$release_folder\Instructions_and_Additional_Notes.txt" -Destination "$final_folder\Instructions_and_Additional_Notes_$release_version.txt" -Force
	Write-Host "====================" -ForegroundColor Green

	# Copy the Readme and Changelog file.
	Copy-Item "$release_folder\Readme_and_Changelog.txt" -Destination "$final_folder\Readme_and_Changelog_$release_version.txt" -Force
	Write-Host "====================" -ForegroundColor Green
}
Else {
	Write-Host "Releasing is disabled." -ForegroundColor Yellow
	Write-Host "====================" -ForegroundColor Yellow
}

# Prompt to ask the user whether to compress the final folder with 7z.
$option = Read-Host -Prompt "Would you like to compress the final folder with 7z? Please type 'y' for yes or any key for no."

# Compress the final folder with 7z if it doesn't exist already.
If (!(Test-Path -Path "$final_folder.7z") -and $option -eq "y") {
	7z.exe a "$final_folder.7z" "$final_folder\"
	Write-Host "Compressed the final folder successfully." -ForegroundColor Green
	Write-Host "====================" -ForegroundColor Green
}
Else {
	Write-Host "Compressed file is uncreated." -ForegroundColor Yellow
	Write-Host "====================" -ForegroundColor Yellow
}

Write-Host "Complete." -ForegroundColor Green
Write-Host "====================" -ForegroundColor Green

Pause
Exit
