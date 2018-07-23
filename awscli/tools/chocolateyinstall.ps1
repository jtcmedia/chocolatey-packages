$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.63.msi'
$checksum   = '46dc8356557cb22e40ce8ae24dcdde90ae3414bec0744c3b6a7cbc4894bf1a8e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.63.msi'
$checksum64 = '240e7e43e4368fdffa641bafffdad4a521a4f8a579ed62ddb9269319a60337f1'
 
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
