$package = 'AndroidStudio'
$majorVersion = '3.1.0.16'
$buildVersion = '173.4670197'
$checksum = 'd787baa8d9282cbbc671b82b127c3e6bfe9f73a5674ceed17a9e68f926aac526'
$extractionPath =  Join-Path  $env:programfiles 'Android'
$installDir = Join-Path $extractionPath 'Android Studio'

function use64bit() {
	return Get-ProcessorBits 64;
}

function GetStudioExe(){
	if(use64bit) {
		$studioExe = (gci "${installDir}/bin/studio64.exe").FullName | sort -Descending | Select -first 1
	} else {
		$studioExe = (gci "${installDir}/bin/studio.exe").FullName | sort -Descending | Select -first 1
	}
	
	return $studioExe
}

function GetUninstallFile() {
	$uninstallExe = (gci "${installDir}/uninstall.exe").FullName | sort -Descending | Select -first 1
	return $uninstallExe
}

function GetArguments ([string]$packageArgs)
{
	$arguments = @{};

	if ($packageParameters) {
		# Now, let's parse the packageParameters using good old regular expression
		$match_pattern = "\/(?<option>([a-zA-Z]+)):(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
		$option_name = 'option'
		$value_name = 'value'
	
	
		if ($packageParameters -match $match_pattern ){
			$results = $packageParameters | Select-String $match_pattern -AllMatches
			$results.matches | % {
				$arguments.Add(
					$_.Groups[$option_name].Value.Trim(),
					$_.Groups[$value_name].Value.Trim())
			}
		}
		else
		{
			# Throw "Package Parameters were found but were invalid (REGEX Failure)"
			Write-Host "Failed to parse package packageParameters"
		}	
	}
	
    New-Object PSObject -Property $arguments
}

function Uninstall-ChocolateyPinnedTaskBarItem {
<#
.SYNOPSIS
Removes an item from the task bar linking to the provided path.

.PARAMETER TargetFilePath
The path to the application that should be launched when clicking on the task bar icon.

.EXAMPLE
Uninstall-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"

This will remove the Visual Studio task bar icon.

#>
param(
  [string] $targetFilePath
)

  Write-Debug "Running 'Uninstall-ChocolateyPinnedTaskBarItem' with targetFilePath:`'$targetFilePath`'";

  if (test-path($targetFilePath)) {
    $verb = "Unpin from Taskbar"
    $path= split-path $targetFilePath 
    $shell=new-object -com "Shell.Application"  
    $folder=$shell.Namespace($path)    
    $item = $folder.Parsename((split-path $targetFilePath -leaf)) 
    $itemVerb = $item.Verbs() | ? {$_.Name.Replace("&","") -eq $verb} 
    Write-Host "Checking if Android Studio is pinned to the taskbar"
    if($itemVerb -eq $null){ 
      Write-Host "Android Studio is not pinned to the taskbar"
    } else { 
        $itemVerb.DoIt() 
        Write-Host "`'$targetFilePath`' has been unpinned from the task bar on your desktop"
    } 
    
  } else {
    $errorMessage = "`'$targetFilePath`' does not exist, not able to unpin from task bar"
  }
  if($errorMessage){
    Write-Error $errorMessage
    throw $errorMessage
  }
}
