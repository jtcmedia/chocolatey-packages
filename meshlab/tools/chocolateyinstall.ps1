$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*x64.*"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file          = $fileLocation
  softwareName  = 'MeshLab*'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

if ( $fileLocation -match 'exe$') {
  Install-ChocolateyInstallPackage @packageArgs
} else {
  # beta
  Install-ChocolateyZipPackage @packageArgs
}
