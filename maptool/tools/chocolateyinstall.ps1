$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.11.5/MapTool-1.11.5.msi'
$checksum32 = '0e9809c732c42b79d6e287ae821e06465d86c296d8355eacaa9f9f87eddad1e7'

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
