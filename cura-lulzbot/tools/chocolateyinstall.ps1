$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://download.alephobjects.com/lulzbot/Software/cura-lulzbot/windows/cura-lulzbot_3.2.27_win32.exe'
$checksum32 = '1dbb7a1beec7a30370f6fe21f9307150062d62da603d36919a34a13d80635e7c'

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
