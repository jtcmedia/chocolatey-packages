$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.11.6.exe'
$checksum   = '301e11403549528510485c3f211a156c5f9d6387b02e5bc7c46be106021b3ee9'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.11.6.exe'
$checksum64 = '6ad53ddbcc3bc4b69a0c3047bf31c347b031e0db05fd1c9bc71eec7529cdb4bd'

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
