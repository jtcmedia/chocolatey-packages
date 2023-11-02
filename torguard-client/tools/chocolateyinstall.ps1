$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum64 = 'de60084ef0cf1626d9661b2a7e8585acca9e05d6cdf1a2a657dcd2f8e8a958f3'

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
