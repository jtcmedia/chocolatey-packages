$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.23.11.msi'
$checksum   = '9c6541590e8dab3407e9ce0ac9e02892beb04b5e34cb4cc87d3c9dd89b18e86e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.23.11.msi'
$checksum64 = '445d5bbad74493515fa4567de66ee7e4eef60db7d7e8a6a214f5db2e442ab4e0'
 
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
