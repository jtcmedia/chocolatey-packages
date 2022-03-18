$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/trexminer/T-Rex/releases/download/0.25.9/t-rex-0.25.9-win.zip'
$checksum32 = '749b0ceee4fc7d25997fd93dce21fa2402d417f366b4c58c2ff8183efe8fdecf'

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
