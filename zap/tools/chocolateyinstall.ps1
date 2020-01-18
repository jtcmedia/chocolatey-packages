$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.9.0/ZAP_2_9_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.9.0/ZAP_2_9_0_windows.exe'
$checksum32     = '0851c6565406cc9e36aba8f783acc328e7a21302153692838abbfd0473992364'
$checksum64     = 'b763e6d6b90e296dbd6fe9181bc303bd6f84814749189da22a2a534e43236bf7'

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
