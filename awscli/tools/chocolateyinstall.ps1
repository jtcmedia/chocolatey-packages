$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.234.msi'
$checksum   = 'b2c0546a076c91c13aae9467ff87c4f7a32cf35997ee0fbaf41496be1910789f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.234.msi'
$checksum64 = '9f5476cdc64f4fb872a7eca02bba2e4817dcb942ac8f2339c648f42f45c96f0c'
 
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
