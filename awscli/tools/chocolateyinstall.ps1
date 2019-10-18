$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.262.msi'
$checksum   = '67c7082d9978805d6d5ac2a39ae578e219730740f5fe972a75647a3f1753c677'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.262.msi'
$checksum64 = '8cc7a11e2dda94758402c054f04f79b8e8dda5dd7ca8ac7f6bc952c9389a5a8e'
 
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
