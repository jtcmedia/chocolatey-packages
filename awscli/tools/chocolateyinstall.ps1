$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.58.msi'
$checksum   = '5730f7f8e6f71fb311e8a506eaf503b46cfb162b60861b08fc460b0af093e55e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.58.msi'
$checksum64 = 'fa5567b841d0dad0b0649b4f6bd49f5b46e1b23d3f4d72ec0b2a0010cbca2a10'
 
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
