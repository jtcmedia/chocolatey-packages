$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.11.msi'
$checksum   = '6c1d51f62fa303e3aee3e7c0be117ff13894d178a5f77f99179c1670a87deb0c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.11.msi'
$checksum64 = '28a15c45a5ad5c9cada656b997b48be4866c7bf1d5204e89ada4603ed3635278'
 
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
