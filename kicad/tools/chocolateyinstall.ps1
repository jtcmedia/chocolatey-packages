$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_3-i686.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_3-x86_64.exe'
$checksum32 = '4c4db7fb3d250c1ce8be542c98ca2601e78d7b9e5fb93673f1e362d395a2ba04'
$checksum64 = 'd535c248147bc209567dc41d613d1747f2e5784a632c49d918097b2133c9a670'

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
