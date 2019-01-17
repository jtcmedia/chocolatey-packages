$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.90.msi'
$checksum   = '37960ae1c72fcebe1c974d21c8a9a8bdced7d1546a1faece8462ba8c25b5345a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.90.msi'
$checksum64 = '4d2ecb76b38c75e613d3c6cd3fbd320a81bf170b3c269a38712a1ee0a1d2fe08'
 
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
