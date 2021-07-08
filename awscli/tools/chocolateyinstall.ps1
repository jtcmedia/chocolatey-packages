$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.107.msi'
$checksum   = '64a46c5949cfbfe35f6b8f8340d962d8958252460b169e1f5241cc0bc951a166'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.107.msi'
$checksum64 = '5dfcc838ccbab10a888946d333aca808db92e20664ff904ce588f6e6704c9291'
 
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
