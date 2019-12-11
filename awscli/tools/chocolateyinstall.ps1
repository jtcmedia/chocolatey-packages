$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.300.msi'
$checksum   = '81f6c4cfaa475c4e94565eaa55f6cc5e7b5e8b7ecd7bdc29e3426cc739036757'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.300.msi'
$checksum64 = '1ea27e8e09b95333d344d4dab87ff1cb25439af7543d0447968accc1a02b3ccf'
 
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
