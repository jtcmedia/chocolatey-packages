$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.49.msi'
$checksum   = 'ae8f2d665f18e09f9633c1331b83ba1625155639f8ac38cb7a46b5a396947dbd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.49.msi'
$checksum64 = 'e08150809c6a2fc4a3e3828c685656f0171ba074e6352d37d7085960befb89e6'
 
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
