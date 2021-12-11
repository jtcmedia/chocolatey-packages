$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-win.zip'
$checksum32 = '062d805181e81870b1cdc084a3a66ab5e3124690bf04e6001d1d657031ec2352'

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
