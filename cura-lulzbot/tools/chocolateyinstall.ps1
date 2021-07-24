$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://gitlab.com/lulzbot3d/cura-le/release/-/raw/master/cura-lulzbot-3.6.25-10-win32.exe'
$checksum32 = '2d7c6dda8c4eba1bbb12a63c2c9256451de7b21f4056b820f38afc0b6c8e86fd'

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
