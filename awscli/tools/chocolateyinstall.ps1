$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.31.12.msi'
$checksum   = '5be567106ecced550f377c4193794b6f6f99484c269c31f9a1315e72a9e04a11'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.31.12.msi'
$checksum64 = 'dcb74a5f685d827f37f1e8cfeac21aab0f78c81239f921db5db9d92eeaaa4aa7'
 
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
