$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.80.msi'
$checksum   = '7dae2c41c11dda118a735ea98285b6fb7b4a5091e088a62e4e45b301c21e99a1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.80.msi'
$checksum64 = '3ed4df45f11abd87e67684d412ded9d27a3c1c23a4a8e02feb19d8f6dba8436b'
 
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
