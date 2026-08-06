$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.9.exe'
$checksum   = '5ffcf5ca6efb25481b443d3833921e77626cc90743c529afa64315050bb35a34'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.9.exe'
$checksum64 = '232233247bbd739fad7707075cb0dd2a47448dba1e2dec15fca3b0d501952f7d'

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
