$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/KiCad/kicad-source-mirror/releases/download/7.0.2/kicad-7.0.2-x86_64.exe'
$checksum64 = '3dab45e166b42a1cb992bfbf2f863495348cf27dce90871200ff7ebbe77a4f60'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

if(Get-Process -Name "kicad" -ea 0) {
  Write-Error "$packageName is running. Please close before upgrading."
}

Install-ChocolateyPackage @packageArgs
