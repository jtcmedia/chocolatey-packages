$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/trexminer/T-Rex/releases/download/0.24.5/t-rex-0.24.5-win.zip'
$checksum32 = 'f61383252bd4a4be57ae249af6d30423d54c4297e020b9c0e72c62dc9665b1ea'

$unzipLocation = New-Item -Path $(Get-ToolsLocation) -Name "T-Rex" -ItemType "directory" -ErrorAction SilentlyContinue -Force


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = $unzipLocation
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

Install-BinFile `
  -Name "$env:ChocolateyPackageName" `
  -Path "$($packageArgs.UnzipLocation)\t-rex.exe"

rm $toolsPath\*.zip -ea 0
