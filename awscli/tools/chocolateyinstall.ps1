$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.11.msi'
$checksum   = 'e10949dd5c4369c055241298a7c83ea3ceb0f6b5397e6993a0ca025fe722e55e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.11.msi'
$checksum64 = 'ff51205795255d5b608072df4f89d951c20be216ca1927fe5fbaec71fcee73dc'
 
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
