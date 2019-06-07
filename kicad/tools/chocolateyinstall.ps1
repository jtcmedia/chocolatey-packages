$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.2/kicad-5.1.2_2-i686.exe'
$url64      = 'https://github.com/KiCad/kicad-winbuilder/releases/download/5.1.2/kicad-5.1.2_2-x86_64.exe'
$checksum32 = 'd4329054b648d5564f4e0fcf23e2f123fe1962261b5c8e931ad42ffe45c28024'
$checksum64 = '046734155a049081c63a855760be7d9c4e9acc2f7af51254356909f5cf2fab7d'

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
