$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = 'a90d6a5465a35c51c2c63f2cff94bcb407d7f3a7532fb1bc4d3baa04ec8cfdb9'

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
