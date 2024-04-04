$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum64 = '70942966913b40fc8fbbb04e71c93f6d2e050f2f74b157fa2a41501faee03586'

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
