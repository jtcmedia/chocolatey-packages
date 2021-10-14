$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.10.1/MapTool-1.10.1.msi'
$checksum32 = '97dd80091d81bd480c9262cca3f1ef449e686484791cfe36dd449b196870735b'

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
