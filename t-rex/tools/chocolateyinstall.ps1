$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/trexminer/T-Rex/releases/download/0.26.5/t-rex-0.26.5-win.zip'
$checksum32 = '848b4def50b9b7a702a8f99a7e1362a263a2958b539d17c60ad9f0314579befe'

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
