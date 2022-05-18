$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.24.2.msi'
$checksum   = '4bb0346f56e1388c0d46ff68dd230dfcecfe7bf4407bc314c91428e4b16cf4f6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.24.2.msi'
$checksum64 = 'a7085509e2c027e476d9660147ad3ada593b330a3d287905c0a2b4cb6d00b214'
 
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
