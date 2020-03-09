$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

if (Test-Path "$toolsDir\MeshLab*_x64.exe") {
  $packageArgs = @{
    PackageName     = $packageName
    FileFullPath64  = Get-Item "$toolsDir\MeshLab*_x64.exe"
    SoftwareName    = 'MeshLab*'
    SilentArgs      = '/S'
    validExitCodes  = @(0)
  }
  
  Install-ChocolateyInstallPackage @packageArgs
  
  Remove-Item "$toolsDir\MeshLab*_x64.exe"

} else {
  # beta
  $packageArgs = @{
    PackageName     = $packageName
    FileFullPath64  = Get-Item "$toolsDir\MeshLab*_x64.zip"
    Destination     = $toolsDir
  }
  
  Get-ChocolateyUnzip @packageArgs
  
  Remove-Item "$toolsDir\MeshLab*_x64.zip"
}
