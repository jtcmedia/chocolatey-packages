$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.156.msi'
$checksum   = 'a5b9bd7cb6846e8e55bcc2d52a2186e53fca3065eaeacf5cc613d2e0c0ffe7ba'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.156.msi'
$checksum64 = 'ec9616cd10d29e62a6ad9bb25dd3b53f9e71e58f936e8572fd79fa8ac333944d'
 
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
