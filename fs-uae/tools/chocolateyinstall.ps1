$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://fs-uae.net/stable/2.8.2/fs-uae-suite_2.8.2_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.2/fs-uae-suite_2.8.2_windows_x86-64.exe'
$checksum32 = '4e4eb07f6f553b3172459ea17191c7d8b2eca462ad4498855573334c4f5c7675'
$checksum64 = '4806ae5610af3f3d42395a17c3e741180da0c53c46f6d4010906794bb2e72e9e'

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
