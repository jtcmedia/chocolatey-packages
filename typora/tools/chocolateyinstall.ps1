$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typora.io/windows/typora-update-ia32-1108.exe'
$checksum   = 'e391deec84a102a8cf7e615b2a52c2752aba7d3f22c59288cda50a06e351f311'
$url64      = 'https://typora.io/windows/typora-update-x64-1108.exe'
$checksum64 = 'efd1dd420246c09a6bef027748194a23cb2dcfdc51c17164a522bbd08d1b2f73'

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
