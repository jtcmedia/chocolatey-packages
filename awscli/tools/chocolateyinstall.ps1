$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.0.msi'
$checksum   = 'fb1ef0521d7759b26a98d3015e6cc112075ad2ac6ea3b78869ca614cd81a2ef4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.0.msi'
$checksum64 = 'ebd1c10229aa57e1e7856c3a7a5047c3a03fe6d3a26fc1b4d94819d298bf801c'
 
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
