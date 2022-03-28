$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.2.4.exe'
$checksum   = '4f9dae733f3a858c3f65d5b091b3e22593266a45305c344a46cdc2e2f2f91e8a'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.2.4.exe'
$checksum64 = '5faeb8ea810060677cc23372ac8e7e9ff6bf821f35e96bb79c27c3c61a53f64c'

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
