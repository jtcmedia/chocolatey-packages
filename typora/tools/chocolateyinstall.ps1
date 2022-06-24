$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.3.7.exe'
$checksum   = '4775d86d303da1b3415e3deca00bf38abe7afb19af78d6af3f2f3766ccbe2e77'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.3.7.exe'
$checksum64 = '94fa42e0a42121f2a2d3dac581e0acfeb6d794d87e762a7de1c9a74392b3a7b0'

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
