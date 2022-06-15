$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.9.msi'
$checksum   = '285c8c0212f08ea5a5b04c68609c26763c6aeabe06fbc1f2f89c891218ab0bb9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.9.msi'
$checksum64 = 'f43c54c1e08ce0f4bc786fa6b0cba11941e13a506743fb64b2f213c4105151df'
 
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
