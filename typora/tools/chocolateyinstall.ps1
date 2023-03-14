$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.9.exe'
$checksum   = '3767362106e8d62b61810e62696a306fce2b44814e5a87c4149fe723c95bf711'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.9.exe'
$checksum64 = 'cfb8fe7ea42368fba9d3207bc54dc564a86edec858070e373068eadcac56c5e7'

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
