$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.12.0/ZAP_2_12_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.12.0/ZAP_2_12_0_windows.exe'
$checksum32     = 'fa741469190fd7d29ed870682a614535082a0c403450707c1359e79fe0cd0813'
$checksum64     = '2dc7236c076dff9d35782fb85dbcfea1c57a63eca26ded15807ef2f62a0dcfd5'

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
