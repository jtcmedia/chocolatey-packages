$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typora.io/windows/typora-update-ia32-1117.exe'
$checksum   = '4784a2fa4e4c1918647cf12f3945c70dc281aa2f587326af7e16fb4c5f981915'
$url64      = 'https://typora.io/windows/typora-update-x64-1117.exe'
$checksum64 = '51ddc37ddac94eeb0d92d0fef6fea02cf9339628472c9ddf7c3e13a7694be738'

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
