$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.4-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.4-x86_64.exe'
$checksum32 = '302e6e75db99c5f074856119ad71c1f0293a1efd705b0e88af17fba9a2c65394'
$checksum64 = 'd86cee19c1eb0f1b54d05634aa2218dd2d1ca3d47c38ea3ee7750b8d04fd7af3'

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
