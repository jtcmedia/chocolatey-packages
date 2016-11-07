
$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://fs-uae.net/stable/2.8.1u3/fs-uae-suite_2.8.1u3_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.1u3/fs-uae-suite_2.8.1u3_windows_x86-64.exe'
$checksum32 = 'da1894d23c76d686556046b56f4d89517b6d996ec2ecdbc084fe5f5e033e0190'
$checksum64 = '35c55d212d93f5bd3e0f1afdbd85550ef9d95ab478e5c8898820d9e3d87df426'

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
