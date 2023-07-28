$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.14.msi'
$checksum   = '66c807a38b45a9eca4b4c896c477ad8df811ed0e73bdc516da998101f0651fb4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.14.msi'
$checksum64 = '5a30b8f5a014de4aa3df1bdfe63f7032f6cb926887d3ea0a5026cf003caf08b3'
 
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
