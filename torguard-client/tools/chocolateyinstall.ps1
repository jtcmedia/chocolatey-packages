$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://updates.torguard.biz/Software/Windows/torguard-setup-latest.exe'
$checksum64 = '2befd95b63586b99cba68f1f82a09062729824670108636051ad918255c31ab5'

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

$ahkFile = Join-Path $toolsDir "chocolateyinstall.ahk"
Start-Process -FilePath "AutoHotkey.exe" -Verb runas -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs

Stop-Process -Name "AutoHotkey" -Force
