$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.6.exe'
$checksum   = 'b2e2ce72f52dccde9940925695d7207972126823b8bac16d697621c5ec213383'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.6.exe'
$checksum64 = 'd8714c3c8531a30d795d12e030bbbd616e65a6862e9df5589535f557e009dcc0'

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
