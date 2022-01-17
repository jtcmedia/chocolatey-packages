$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.1-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=rwthaachen&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.1-x86_64.exe'
$checksum32 = '9ae609c60b55032907575c14dbe86ea6a84b2394037fe26f315a34e4bf2db4ea'
$checksum64 = '709ca9446542900d0e2e7821bb0d165002bca9b78e940d03aae7c0ed1c717abd'

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
