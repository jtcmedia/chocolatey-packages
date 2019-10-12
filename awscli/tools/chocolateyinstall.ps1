$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.258.msi'
$checksum   = '03038ed53a9ce1845fe210d51bb2c8231a120b59d45e241698f9c66785daa94c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.258.msi'
$checksum64 = '0fe15af8c0be6f0d95b3674ae6ccbd425820b7538bd372d340fe6d02dd44cc05'
 
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
