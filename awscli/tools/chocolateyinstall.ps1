$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.105.msi'
$checksum   = 'c2ffe9a53ce1fbd71ccd4deef786b077fd4ee631e3a483e4aa1d129afad87ae9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.105.msi'
$checksum64 = '568bacb1b5b86584d7bb1bbcecfb45c1e990aa585ede9147e807eddda85e03a1'
 
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
