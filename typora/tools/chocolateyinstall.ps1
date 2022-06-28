$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.3.8.exe'
$checksum   = '2ba881de633af410e3eb0cf40c5d86d51bee220fd53756356ea9f3e4e8d8114d'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.3.8.exe'
$checksum64 = 'a21e1bc62abe69fab37813dd92fb8e46dc1ddcc9a3246dbb31c6d94303450876'

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
