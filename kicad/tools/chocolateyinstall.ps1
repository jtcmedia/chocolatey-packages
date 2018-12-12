$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.2_1-i686.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.2_1-x86_64.exe'
$checksum32 = 'fab44234d6fa91b43c460e2ede5e9cf292c11f0f3a0618f429452155678ff337'
$checksum64 = '3931c930aa25a09d13e18742733c7b4874c814f5d811c010b056c5c3b9352c80'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
