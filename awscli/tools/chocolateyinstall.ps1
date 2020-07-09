$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.96.msi'
$checksum   = '5b58de3cae8bbcc3b7ec4271c728e0ed85b1c8c7a3fc79f74d0ba7d64cc27e81'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.96.msi'
$checksum64 = '4b4f552e9490c6dc1d2df992fc128f2d9f94da80ce4e91aaee0a233e59a13bb7'
 
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
