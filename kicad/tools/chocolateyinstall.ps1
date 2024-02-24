$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/KiCad/kicad-source-mirror/releases/download/8.0.0/kicad-8.0.0-arm64.exe'
$checksum64 = 'dd6309caa61f9828d1de66343625bdced8692bbfb003477c556c1b70f33cd55b'

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
