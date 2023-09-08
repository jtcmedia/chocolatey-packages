$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.43.msi'
$checksum   = '8921b3c794c0c1953857b3f130f22bca2130451711b4a0113790ca2f62b6a875'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.43.msi'
$checksum64 = 'a8c3d90ebd75976bbc9a0abb6e0825efce3d16b296c7ac50ccd345085f75e9a3'
 
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
