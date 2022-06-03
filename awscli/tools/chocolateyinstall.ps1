$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.2.msi'
$checksum   = '6792bff82f2ba8a23875fc0791f73a6eb0c6c32f2596f56644c8679681e5cb5e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.2.msi'
$checksum64 = 'd0b745fdd5e24366d1432faa4a140de0dae4f01258795eec4078a6fbc53ab224'
 
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
