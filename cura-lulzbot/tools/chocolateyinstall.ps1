$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://gitlab.com/lulzbot3d/cura-le/release/-/raw/master/cura-lulzbot-3.6.36-win10-win32.exe'
$checksum32 = 'fb352222390985c7afb0c5970cb2978652ce4cd7994f80767d45b1f592958ac4'

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
