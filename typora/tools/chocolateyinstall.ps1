$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.8.5.exe'
$checksum   = 'd8d4c92f70d3551391f8d29fea802e135c18950df36f4610992be863f13d812c'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.8.5.exe'
$checksum64 = '4a4482fff5d3772f171a23a90148549625717d47eab8c268c9cc441e119d3fca'

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
