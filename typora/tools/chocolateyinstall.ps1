$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.6.7.exe'
$checksum   = 'b30b2a6234540f5981ee303559cac8831f3dacfbc704e330252fbe95eb1724e3'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.6.7.exe'
$checksum64 = '221b154bdaffe150216afef23eeaa643381ccf7147775da5d28bc25b27d218dc'

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
