$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = '2cdf90d64297e4eff8702601a26cae9859c3f4e0dcd1fdbdbf518bbce200b555'

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
