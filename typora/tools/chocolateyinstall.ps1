$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.12.1.exe'
$checksum   = '83955ea661051dfdf8239f5bff4a6c9ae199b22a10768f0d76a2a73da3afc0bc'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.12.1.exe'
$checksum64 = '30ae6fa152f5090b10353f6fed3b8b7531653c4b1fd8a0976af9ac376c620d9a'

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
