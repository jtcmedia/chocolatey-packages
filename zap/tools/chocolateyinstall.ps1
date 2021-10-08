$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.11.0/ZAP_2_11_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.11.0/ZAP_2_11_0_windows.exe'
$checksum32     = '4c1abebf9700591e9d6d7281a98cf0b0d524e5f4964593722c0d9722c4d72398'
$checksum64     = 'b2bcf2b7ca7d1bdcc78aa72003d8c1e071bc65677c10e87ad4886de90a42e1f8'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url32
  url64bit       = $url64
  softwareName   = 'OWASP Zed Attack Proxy*'
  checksum       = $checksum32
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '-q'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
