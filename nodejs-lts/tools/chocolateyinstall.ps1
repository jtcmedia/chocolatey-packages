$ErrorActionPreference = 'Stop';

$packageName= 'nodejs-lts'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://nodejs.org/dist/v6.9.2/node-v6.9.2-x86.msi'
$url64      = 'https://nodejs.org/dist/v6.9.2/node-v6.9.2-x64.msi'
$checksum32 = 'f8b911a249d45358464135c41e7b16fe4abef8d047efb6183f043bc965632aea'
$checksum64 = '9b2fcdd0d81e69a9764c3ce5a33087e02e94e8e23ea2b8c9efceebe79d49936e'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64
  softwareName  = 'Node.js'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
