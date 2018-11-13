$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_4-i686.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_4-x86_64.exe'
$checksum32 = '13fda96b95c3d90415d2402508fd90e9709ca2fae1cb5a1e3c677b50ddbe3d1e'
$checksum64 = 'b52f58bac3aa461cbe92051a58a2dc2b6bc9b702995b4965badbc6c7c95591c0'

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
