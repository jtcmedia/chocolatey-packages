$ErrorActionPreference = 'Stop'
$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*_64-Win_GUI.zip
  Destination     = $toolsPath
}

Get-ChocolateyUnzip @packageArgs

#Don't need installer zip anymore
rm $toolsPath\*.zip -ea 0 -force
