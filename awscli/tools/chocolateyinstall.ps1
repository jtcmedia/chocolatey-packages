$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.61.msi'
$checksum   = '2ee1c7e20a36992cdadab799c7630a551e89e42884dd2eec8e4077a65ec70a8c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.61.msi'
$checksum64 = '03e1ab06f60f5a0ab87cf13f2e54a5ab679e7fcd5c3fcb867839ca946ec314dd'
 
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
