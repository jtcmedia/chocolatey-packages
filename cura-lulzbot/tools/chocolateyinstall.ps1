$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://gitlab.com/lulzbot3d/cura-le/release/-/raw/master/cura-lulzbot-3.6.29-2-win32.exe'
$checksum32 = 'b364b4738400a5ac03b6cd3991b8632ea58bb40a8a5545986b898b6a97512b4b'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  softwareName  = 'cura-lulzbot*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
