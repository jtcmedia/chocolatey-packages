$ErrorActionPreference = 'Stop';


$packageName= 'fs-uae'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://fs-uae.net/stable/3.0.0/FS-UAE-Suite_3.0.0_Windows_x86-64.exe'
$checksum64 = '337617e63afa4a8ae1a9c6f84d98f661dae9daf24418a854ab250a3603f27aa2'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64
  
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'FS-UAE*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
