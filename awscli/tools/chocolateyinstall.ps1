$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.81.msi'
$checksum   = '991879974933d9c3f4fc40004a7655bf92aadcfe4bbf58c0eb8cfb9a5c882fa0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.81.msi'
$checksum64 = '707c5e5809f282b7bb2e4c752dd7f036d437e6f9d0dd61e1dfec3612831296ed'
 
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
