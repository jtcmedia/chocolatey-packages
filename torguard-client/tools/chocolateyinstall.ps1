$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://torguard.net/downloads/new/torguard-setup-latest.exe'
$checksum64 = '87e644263565b166234dcdaf1180c189babc4a260d0824dfbc63092b4df780df'

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
