$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://fs-uae.net/stable/2.8.3/fs-uae-suite_2.8.3_windows_x86.exe'
$url64      = 'https://fs-uae.net/stable/2.8.3/fs-uae-suite_2.8.3_windows_x86-64.exe'
$checksum32 = 'ae65cbff51e31a03c5329f0aedc940378702c8f05e5df91037eef8acb51af6db'
$checksum64 = '10265623e153c87b34a1eb50b08fa8dd61664741c0d30f57391b9953821dacec'

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
