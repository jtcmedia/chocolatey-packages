$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = '3b75560e8f02a215ec1b6d64dd670b650735d1283193047c1cbbc0e67068c744'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = '*TorGuard*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "chocolateyinstall.ahk"
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage @packageArgs
