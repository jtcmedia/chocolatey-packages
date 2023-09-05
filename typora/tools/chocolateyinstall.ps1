$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.7.3.exe'
$checksum   = 'dded0814f901eefb180529941a4d05ca6c8b4b06ad93389e20288705108eeb23'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.7.3.exe'
$checksum64 = '5f04d47b91c2ac85d18768c59004a0a394909b13c8a1279d76bafbd59cc2d8b9'

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
