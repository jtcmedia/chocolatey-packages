$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.9.4.exe'
$checksum   = 'ed940f5b58390d70612757e277b70fa01eeede5404febea03704781548d24513'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.9.4.exe'
$checksum64 = '9935e636d9deb4bf2c671d6a2b48469c7360c19e5c5f9ad74fc95219898104a2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'Typora*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
