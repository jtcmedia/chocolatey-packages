$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.8.exe'
$checksum   = 'd5f1d387eab35fb5e834bd1f22f1dfb692eff4321a2fc454434623630f361b5e'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.8.exe'
$checksum64 = '79165d7111ec0a3be86239039cf81264f071c1a451acda2eb7b84180ad7f2390'

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
