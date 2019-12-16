$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://lulzbot-download.s3-us-west-1.amazonaws.com/lulzbot/Software/cura-lulzbot/windows/cura-lulzbot_3.6.21_win32.exe'
$checksum32 = '89e48830fdd3c84ae8c195ed0fc8abadfc0d2595c1f05b94900f0dba31b749b3'

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
