$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://gitlab.com/lulzbot3d/cura-le/release/-/raw/master/cura-lulzbot-3.6.25-win32.exe'
$checksum32 = 'ab0c3b4e9f534e04dfb477eb92ff4a74223b1374bcd73fd2c846d8148df42dae'

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
