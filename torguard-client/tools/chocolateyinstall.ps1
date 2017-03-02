$ErrorActionPreference = 'Stop';

$packageName= 'torguard-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum32 = 'a8903fa31ec32379f13af1bb14ff47e8d9bd8715c02a2c1c8098e48d98ac697f'

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

$ahkFile = Join-Path $toolsDir "chocolateyinstall.ahk"
Start-Process -FilePath "AutoHotkey.exe" -Verb runas -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
