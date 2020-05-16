$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.61.msi'
$checksum   = 'c4fc1c1f0e827822da36a0c2a1d47bab89f11cdba056ee380cc14c0bde0fd931'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.61.msi'
$checksum64 = '964ee7ab0307a64c13b9545b60d665c35d4344b0e5994c5d39c1b1ed83523cef'
 
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
