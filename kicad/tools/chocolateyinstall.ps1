$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.6_1-i686.exe'
$url64      = 'https://kicad-downloads.s3.cern.ch/windows/stable/kicad-5.1.6_1-x86_64.exe'
$checksum32 = 'd2f64d261a224d7bf348129d51605419d6226952d5d205df627ee8ca5bd4390d'
$checksum64 = '831d99141ccbbd491f765c08a7eafb6a385c4bbd306026eca2b4402ed8325bd2'

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

if(Get-Process -Name "kicad" -ea 0) {
  Write-Error "$packageName is running. Please close before upgrading."
}

Install-ChocolateyPackage @packageArgs
