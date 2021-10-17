$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.10.2/MapTool-1.10.2.msi'
$checksum32 = 'f45dba0641cd0bc2ac441b85343d07637f5cae6f34cb201586affaf2e77436ec'

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
