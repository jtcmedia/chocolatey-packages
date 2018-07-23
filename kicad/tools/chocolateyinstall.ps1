$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'http://www2.futureware.at/~nickoe/kicad-downloads-mirror/windows/stable/kicad-5.0.0-x86_64.exe'
$url64      = 'http://downloads.kicad-pcb.org/windows/stable/kicad-5.0.0-x86_64.exe'
$checksum32 = 'f19907130649153385b9179a6265242aded958ebb6ea0b031af1c377ad401542'
$checksum64 = 'f19907130649153385b9179a6265242aded958ebb6ea0b031af1c377ad401542'

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
