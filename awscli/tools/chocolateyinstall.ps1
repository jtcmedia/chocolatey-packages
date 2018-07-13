$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.58.msi'
$checksum   = 'cf2f1e01902321d4d4947602044bd1e7de43b53ce3c0e9cb23533dd89e6f54aa'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.58.msi'
$checksum64 = '02eea01bc70bab7f7febedb8d57485b4a8811d29d39e3f02717ca6f374247acf'
 
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
