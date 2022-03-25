$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.2.3.exe'
$checksum   = '792332afbd284cf015d49cd6593145b00fab2de94bdfabb9458bc55f12406edd'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.2.3.exe'
$checksum64 = 'ed37257cfd4143398bfbb16f728a8f915ec35bf8fa2b408f5df715def1fb3177'

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
