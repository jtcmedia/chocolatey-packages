$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.278.msi'
$checksum   = '3318d6d0aa9e71f159b831583461d605f13e5d62f9967c915ad7609ce5f43334'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.278.msi'
$checksum64 = 'e5f128886e92e231f16a4a87a4034d8cd3fe9352182053a04c2f3e0972f5a2ce'
 
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
