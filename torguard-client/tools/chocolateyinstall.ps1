$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = '9ea20cc32e7b6b6227d37f3a4337d24f3f0979863c176f67cdf5c5a4c707c29c'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = '*TorGuard*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0, 3010)
}

$ahkFile = Join-Path $toolsDir "chocolateyinstall.ahk"
Start-Process -FilePath "AutoHotkey.exe" -Verb runas -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
