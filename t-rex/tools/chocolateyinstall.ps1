$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/trexminer/T-Rex/releases/download/0.24.6/t-rex-0.24.6-win.zip'
$checksum32 = '6c79a4395269afee2c9ee97c78edaa395dca973bdf68a69eb14618f0db1c36bd'

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
