$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2_10_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2_10_0_windows.exe'
$checksum32     = 'da71efe9c4ffbd6d5427a96964517ebbcc96dc1d84f0faff66dc07cf395b948b'
$checksum64     = 'cff6885a98abfec9c33224cba65ddead6b6dd4e61eff8140c59d1a4f396250eb'

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
