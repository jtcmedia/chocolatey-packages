$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.84.msi'
$checksum   = 'e5095abe8d2cddd9f374e7625344498cab4aec0a4a67e6c2ba82198e01150ecd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.84.msi'
$checksum64 = '218247147dabc3b94c77e54912cfb4a3a4d8c0a1b73b5db33b9e9c5ba18b310f'
 
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
