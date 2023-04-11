$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.12.exe'
$checksum   = '1455041c96b0b8e4fc069e5728ae300a68b1627d95b7c840f55871607407396b'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.12.exe'
$checksum64 = '1b7e6d1e2c232408755ecfda1e723d2a10e7d50a9ab7ffd750edb17dfa51cc49'

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
