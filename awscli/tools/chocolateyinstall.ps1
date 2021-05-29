$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.84.msi'
$checksum   = 'f7fb4bd466d4fbbd9cc7aba103a19ae8f8dfff3f9fba3bffef8fac9b8907a710'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.84.msi'
$checksum64 = 'eb557cf14102f59e9653f7c71ac266fce01878d50da3a5cb66e303218619a5b7'
 
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
