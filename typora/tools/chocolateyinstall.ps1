$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.0.2.exe'
$checksum   = 'd35302bf52a1673c552f347c4be8854f98694a7f3719ee24e3812f7d85daea31'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.0.2.exe'
$checksum64 = 'e1a1175548b042fe6c6e21e74a7b7f9472b8e6c485838ecd4cbc9899a9c7bd21'

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
