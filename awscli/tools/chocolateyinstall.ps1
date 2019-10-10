$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.256.msi'
$checksum   = '11f0339a2ef11bfd6221e8cf6d8afa7d569f0b7ce761c355791a1eada64db70d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.256.msi'
$checksum64 = '75b8f01757b02b1c546f339c366e50530e1d6da5b68f8942ccaea124a2354e83'
 
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
