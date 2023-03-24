$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.98.msi'
$checksum   = '75553fcf83ad115dd9e016cc06fef87b6adb843c7a9f041172bb34e33f423add'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.98.msi'
$checksum64 = '46fcc7e9764d3cd6e13f5682e5280ff8722e36bc6bae4152f96c8b4e8b4782a8'
 
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
