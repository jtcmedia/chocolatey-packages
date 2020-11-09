$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.174.msi'
$checksum   = '25f2ad5c460f137fe603e6eb6e2fc5c5ace7ede810d0aaa7daa3d869cdc3ab9a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.174.msi'
$checksum64 = '9d637aa660d02034f3d522f185754217def2f3d25bc3dd218ff74a0c7327b425'
 
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
