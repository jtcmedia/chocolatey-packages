$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.13.6.exe'
$checksum   = '4c625c2b5213bf480ab383e3f2c6ce42d2121b5d79124498d8749fd8797984b5'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.13.6.exe'
$checksum64 = 'd4a73431c1966648af6a9b5769a48beca231b27cbae5d09c5762a23bafcf1ab2'

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
