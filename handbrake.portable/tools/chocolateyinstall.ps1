$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipFile = Get-Item "$toolsDir\*_64.zip"

Get-ChocolateyUnzip $zipFile $toolsDir

#Don't need installer zip anymore
rm $toolsDir\*.zip -ea 0 -force
