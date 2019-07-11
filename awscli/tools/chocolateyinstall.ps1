$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.196.msi'
$checksum   = 'e2147fc0a1fcbe72fec4c2ec2af7ff76b6210bb43a301178cdce154414d256fd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.196.msi'
$checksum64 = '86e284ced3cfa8ede38920b94f345274ccc3c8ee04690ea5fd4d3f8d68e19cab'
 
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
