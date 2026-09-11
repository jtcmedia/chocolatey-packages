$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.10.exe'
$checksum   = '58ff097d5079a9dd53efc63f29f7e6fcda59b3dec87b3eeb5c84d5defbff3613'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.10.exe'
$checksum64 = '2e2505e3a2bfdf9dea1b732a7bf7210873b9c841802a0d4c22b5bb75bf9ff7d4'

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
