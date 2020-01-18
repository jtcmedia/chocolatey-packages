$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*64.zip"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = $fileLocation
  Destination     = $toolsDir
}

Get-ChocolateyUnzip @packageArgs

#Don't need installer zips anymore
rm $toolsDir\*.zip -ea 0 -force
