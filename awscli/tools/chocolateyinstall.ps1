$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.8.msi'
$checksum   = 'a169efc24b4970745c0fc5c3f630c32d97b9320abc5564ce67cb9397be3c1ac6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.8.msi'
$checksum64 = 'c0e9a5d851943641c4539db83a35c38251d9ee88e98df37eb45e9f022a4b8cc3'
 
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
