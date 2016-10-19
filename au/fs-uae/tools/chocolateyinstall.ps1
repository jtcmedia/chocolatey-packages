
$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://fs-uae.net/stable/2.8.0/fs-uae-suite_2.8.0_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.0/fs-uae-suite_2.8.0_windows_x86-64.exe'
$checksum32 = '96293a9efb030ed8f79db56c9e2e1b0fa3889ce2d61c50878d38ba00cc1bad6b'
$checksum64 = '33f6848cce6449651628d58a6a6c3e4d407ed90aa3eacd2fce22a520f0187c21'

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
