$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.49.msi'
$checksum   = 'cfd6ee8b9e28d3138cb1fc85eb7dd9fd7dabff24bcbab7e029bf172dc8efb5ec'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.49.msi'
$checksum64 = '31f79a04e3082211a8953ebfe60c93336e22853c6f1f10cd840fed312b592e76'
 
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
