$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.134.msi'
$checksum   = '81dfaf6f8504145ebcf407de349f7b55bd28ecc4eb942f321cd194bc96d2e92e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.134.msi'
$checksum64 = 'be0b5100ec8266f02c0ba4fe9d10a6bf6d10ce994ffa61a53f09cd967f7eb2d5'
 
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
