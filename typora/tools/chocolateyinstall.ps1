$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.7.5.exe'
$checksum   = '3c8389db5fb18f0dd30ba8d73205f9a66db6c1e13ad8b188d8cb13b2cd465748'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.7.5.exe'
$checksum64 = '99a470e8b7a57165096604df0c3757a5bc4a25403c193d87f988553d214873a2'

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
