$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.10.8.exe'
$checksum   = 'cb3c99945d1a604bfd6d440bc152eece9119ec37f8a7424095ec8bb6902fc91e'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.10.8.exe'
$checksum64 = '58fb7a2c98fdd2b044ed2b8cceba0770c0dc11156c89f961714a79d92b8b98ab'

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
