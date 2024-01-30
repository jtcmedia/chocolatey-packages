$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.8.9.exe'
$checksum   = '86bb7ed1157bd1a0d1239f8919c509c3b8bf9ff66a9ff5eb945a447872653142'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.8.9.exe'
$checksum64 = '5dffa55000750d041dc87a686e1e3f55379ea70805d38d0393d1554f7dd6a892'

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
