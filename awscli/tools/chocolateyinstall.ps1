$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.82.msi'
$checksum   = '94d85f122e773eedf5f37d765e7a56374a256b0743f5c3a5fc81c310a7974b04'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.82.msi'
$checksum64 = '7ee0549ff5cee1569e5e4f6bf6971cd86ed95da18acdb9c13d83069f89d06c6e'
 
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
