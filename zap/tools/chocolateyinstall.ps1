$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2_11_1_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2_11_1_windows.exe'
$checksum32     = '4f753278b374d292a0c1c8fbabc60153acf3bd7c9ce8fb1930a5d68fdfad6638'
$checksum64     = '0c86af10453b2444e70706f259a5878586f536fc57f14b85b41dd47fdbc45922'

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
