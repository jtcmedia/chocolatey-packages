$ErrorActionPreference = 'Stop';

function Uninstall-ChocolateyPinnedTaskBarItem {
<#
.SYNOPSIS
Removes an item from the task bar linking to the provided path.

.PARAMETER TargetFilePath
The path to the application that should be launched when clicking on the task bar icon.

.EXAMPLE
Uninstall-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"
#>
param(
  [parameter(Mandatory=$true, Position=0)][string] $targetFilePath
)

  Write-Debug "Running 'Uninstall-ChocolateyPinnedTaskBarItem' with targetFilePath:`'$targetFilePath`'";

  try{
    if (test-path($targetFilePath)) {
      $verb = "Unpin from Taskbar"
      $path= split-path $targetFilePath 
      $shell=new-object -com "Shell.Application"  
      $folder=$shell.Namespace($path)    
      $item = $folder.Parsename((split-path $targetFilePath -leaf)) 
      $itemVerb = $item.Verbs() | ? {$_.Name.Replace("&","") -eq $verb} 
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
      Write-Warning $errorMessage
    }
  } catch {
      Write-Warning "Unable to unpin. Error captured was $($_.Exception.Message)."
  }
}

Uninstall-ChocolateyPinnedTaskBarItem -TargetFilePath "${env:ProgramFiles}\Android\Android Studio\bin\studio64.exe"

$desktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$desktopPath\Android Studio.lnk" -ErrorAction SilentlyContinue -Force

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'Android Studio*'
  fileType      = 'EXE'
  silentArgs   = '/S'
  validExitCodes= @(0, 1223)
}

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | % { 
    $packageArgs['file'] = "$($_.UninstallString)"
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $($_.DisplayName)"}
}
