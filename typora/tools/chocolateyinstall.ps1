$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.12.3.exe'
$checksum   = '07968482e9dc52bf5fa57778aaf6dd17a488a84c70d46aae7acb626d5c0bcd3e'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.12.3.exe'
$checksum64 = '412962eba7c867f32481423f8828030e0b03062a39917743bf54593a7ae81c6a'

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
