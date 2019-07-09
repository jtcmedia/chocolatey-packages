
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'faas-cli.exe'

Uninstall-BinFile -Name $env:ChocolateyPackageName -Path $fileLocation
