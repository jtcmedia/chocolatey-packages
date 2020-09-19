$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.142.msi'
$checksum   = 'b97bb3af778fed1d2d76b3a1bf59dd0b5f617ecc8370690ff4c4018852d61593'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.142.msi'
$checksum64 = '4b533e420164a79716023af5dfc724b5b93a0378e8dc6b83238c74c096b5a0b3'
 
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
