$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.116.msi'
$checksum   = 'af11fe08ddb5b4ed0c441182017455e6b928c96d9946ad3955099037dcfffa5a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.116.msi'
$checksum64 = 'c2fbc3c88fc88d56464df5f232aff18efed453b0c715e92f8ee80cf5086eeebc'
 
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
