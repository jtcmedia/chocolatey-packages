$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum64 = 'f5e5049c6a4f0a3b087f50caeac84088941bbd923b86f8fccb0d5560efa8606c'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = '*TorGuard*'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
