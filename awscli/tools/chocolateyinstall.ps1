$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.10.msi'
$checksum   = '832b3eb313aaf0d2941e7ce7220bc63b710281b917d2260544a38fbf9e05cfa6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.10.msi'
$checksum64 = '0fbf5e2db5a149feb832db209aa0555a160a5fa23c67289ef18be9924fbe6b27'
 
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
