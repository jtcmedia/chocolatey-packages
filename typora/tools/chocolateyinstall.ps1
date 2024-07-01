$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.9.5.exe'
$checksum   = '786247db5c9c5f18870fb7683573e0d5c55ba507cb0ee52618935f9ebab222a8'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.9.5.exe'
$checksum64 = '047deab87662bcb6222f7900164cddb08e0247feac179039067db9eeb9d79447'

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
