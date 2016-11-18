$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = 'd9d31be4e0a22080b1c7f2f8398106cdc71655cf62f51ffc749122b968b0c9bc'

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
