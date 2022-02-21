$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.1.4.exe'
$checksum   = 'dab198cc561479891a2bedd11a45825a44f37b5ede15a66123acdee5bac03ea7'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.1.4.exe'
$checksum64 = 'f813469903c7106408e85cacc0e1d8d5c3ad51190e308eff6e9f0f2e67a6b2d9'

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
