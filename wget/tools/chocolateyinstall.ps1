$ErrorActionPreference = 'Stop';

$packageName= 'wget'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') { gi "$toolsDir\*win64.zip" } else { gi "$toolsDir\*win32.zip" }

Get-ChocolateyUnzip -FileFullPath $zipfile -Destination $toolsDir

# don't need zips anymore
rm $toolsDir\*.zip -ea 0 -force