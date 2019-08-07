$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.212.msi'
$checksum   = 'bba8db4a1251b39cf41fd0cae4a3defe77cdb5fe9d7035522b5db6e989dfd3bb'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.212.msi'
$checksum64 = 'd57d20e970d4e7657307b8ae342e56b7677cd491616e1002cded32c65e6e30a8'
 
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
