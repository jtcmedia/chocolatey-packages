$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.3.6.exe'
$checksum   = '3f1a28dbcf92f14d571047e00c5d7b50e93ec43581412f49983e2859d895a39d'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.3.6.exe'
$checksum64 = 'ac1c8c8ed2e7c19e469d22a4f54428e9caa3e9af6934c98c75f19be04883aab5'

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
