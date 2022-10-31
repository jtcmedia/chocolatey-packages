$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.9-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.9-x86_64.exe'
$checksum32 = '3b15843a38b23ffc1a996b55857d45ddcb92f27a602c63500b8b8709470e0ea8'
$checksum64 = '4ea729625a916ac660b1b2c2949de89191c51558866d8f517ca68a6e05dcd377'

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
