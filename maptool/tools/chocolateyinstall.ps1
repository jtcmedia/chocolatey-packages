$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.13.0/MapTool-1.13.0.msi'
$checksum32 = 'eadfee860d39c19238a0b893e4176cc315eb05ff370910d086d35a727f7f637e'

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
