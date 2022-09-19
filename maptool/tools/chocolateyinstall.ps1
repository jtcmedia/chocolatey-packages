$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.12.0/MapTool-1.12.0.msi'
$checksum32 = 'f69739ee90660e8b1174edffa6b2ddc398fe66eb03bf18414d13054b82234146'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileType        = 'MSI'
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

# remove installer msi
rm $toolsPath\*.msi -ea 0
