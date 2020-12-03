$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*_x64.exe
  SoftwareName    = 'MeshLab*'
  SilentArgs      = '/S'
  validExitCodes  = @(0)
}
  
Install-ChocolateyInstallPackage @packageArgs

ri $toolsPath\*_x64.exe
