$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.6.6.exe'
$checksum   = '5110f011dec7545d332d9e2ebbf9cf6e69f9a9e4cbd564a8535c80206bfd3421'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.6.6.exe'
$checksum64 = '80de603bbd709929ab763c0f4cc4d72461314c778ad922623128a5c5665ec76a'

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
