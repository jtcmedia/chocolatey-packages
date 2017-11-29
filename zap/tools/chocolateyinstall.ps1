$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_windows.exe'
$checksum32     = 'eea63e94c84b08c2fffc49c8b6645b38c2c9a0a49e45b2480e6fa85cf5b391d2'
$checksum64     = 'e3243792525306731ae9eba0cc4697d289e54a58ac529da0c021f2c1ca109246'

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
