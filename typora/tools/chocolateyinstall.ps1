$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.18.exe'
$checksum   = '6de3cfbf2c79273157b29e9e3d5068ea4ac738665318df80e83ac49281bde07a'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.18.exe'
$checksum64 = '459e34a1240010fb54d05cdc830778cc118c9a685132a13f3369c191bbecdf1e'

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
