$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_1-i686.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.1_1-x86_64.exe'
$checksum32 = '5ca92deff8f34d6727f3c5e625314672c644b57aebae81bef01b4e85367f9ed2'
$checksum64 = 'be6d18a1e590f201df3079098ce99cd64146331f61b7ccfa1122f2f2763c1a4a'

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
