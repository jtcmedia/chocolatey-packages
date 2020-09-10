$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = '39ecb0ce36c4eb6d9f848220e5f61658072b12b02d792165bd8fc0cd2bdd80b9'

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
