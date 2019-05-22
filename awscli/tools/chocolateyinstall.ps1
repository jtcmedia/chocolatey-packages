$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.163.msi'
$checksum   = '3e38fe3810663e16fede68246c94e8475f195d5bdecf0ae6f3652b96a72b577e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.163.msi'
$checksum64 = '6f64c26c4a51ed9e30c7baca55fbb788d0f48c2776fa201e5aab5fbbf21e58c4'
 
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
