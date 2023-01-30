$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.11-i686.exe'
$url64      = 'https://osdn.net/frs/redir.php?m=nchc&f=%2Fstorage%2Fg%2Fk%2Fki%2Fkicad%2Fkicad-6.0.11-x86_64.exe'
$checksum32 = '9d128e9c09783b2c97142d6cba15cc5866a8f6ff3680b13f9578bed7dc4fbeb1'
$checksum64 = '41d89f8bd141be2efce68f667f6cbf030191198fa517fd189f4ba6dc129e4ac7'

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
