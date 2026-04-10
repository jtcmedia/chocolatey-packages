$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.13.2.exe'
$checksum   = 'b929a53556b51d5e5aa97d2544235f2814c4efad927a37be2e33e17eaf4e37fc'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.13.2.exe'
$checksum64 = 'ec56b1949b1bb75b7eb62ea283b04f66359eb51049d054e93e91a05a9b7168d4'

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
