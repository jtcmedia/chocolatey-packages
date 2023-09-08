$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.7.4.exe'
$checksum   = '11af5fcf5f13ad5c08b68f4e5ba29c99e61bc9fee8366cd7866d30b67507d6d0'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.7.4.exe'
$checksum64 = '0159c1f5ae961285920c1ff77fe4560518bb5b8c69a8e6e2c2733435dc1b4f97'

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
