$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.23.msi'
$checksum   = 'c05f98e536734ac9dca6b7070e58efc7b1345b7abed55d749461e37645fa76f0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.23.msi'
$checksum64 = '08e8e354b15879876d8d8ddbec2f81ba4d89052ec33b69c4ba1883d1914f77f8'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
