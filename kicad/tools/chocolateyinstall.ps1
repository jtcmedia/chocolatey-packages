$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/KiCad/kicad-source-mirror/releases/download/8.0.6/kicad-8.0.6-x86_64.exe'
$checksum64 = 'c7dd8e68313459cbb70242dfbc37d019d2126b734a84366bb768624d995b61f4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64     
  softwareName  = 'KiCad*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S /allusers'
  validExitCodes= @(0)
}

if(Get-Process -Name "kicad" -ea 0) {
  Write-Error "$packageName is running. Please close before upgrading."
}

Install-ChocolateyPackage @packageArgs
