$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://fs-uae.net/stable/2.8.2u2/fs-uae-suite_2.8.2u2_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.2u2/fs-uae-suite_2.8.2u2_windows_x86-64.exe'
$checksum32 = '30e48c0285f8349016c9f3315fcc56e8895a9ef8d42f2a7cd6e99eec9261a3a3'
$checksum64 = '5725a3ccd49256f531b394f65c1327f6df64b234f2c94b9668cc68550eaab816'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url32
  url64bit      = $url64
  
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'FS-UAE*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
