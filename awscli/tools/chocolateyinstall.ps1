$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.90.msi'
$checksum   = 'b7b561d1b3f35b99e2b6f711280a9ff165ba0c0f5114ab9b528bd6dedc08bd15'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.90.msi'
$checksum64 = 'aae2e40e181f01443e70d388007eb75263267e2457bf340652a54aec0d17f508'
 
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
