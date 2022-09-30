$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.8-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.8-x86_64.exe'
$checksum32 = '13207a218467226db67ecf95a223ef69134a548e055f3e48b2a8d144ae410527'
$checksum64 = '29d3648c7cfef721148e3a6c1603c3608663f5e9c81547f2cb275281c1ed35ad'

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
