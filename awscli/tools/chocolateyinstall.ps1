$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.57.msi'
$checksum   = 'f3324c30c9fe4572d3f4289b07ee782786d36cfa6d02aa1f4b5c35aa39ac233e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.57.msi'
$checksum64 = '57fb035384c4d0aa74eeda2a3964ba55b867630c589699d93e560cf1783074d2'
 
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
