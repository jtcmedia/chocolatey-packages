$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.30.2.msi'
$checksum   = '4490e188e1a3480b51eeb6dad6839fea18e76ce48855e602ca66b756eb950507'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.30.2.msi'
$checksum64 = 'f4e914aa10b7d2f3475b0555074cf36e2b28ac902fbba5637b6739b27e289d9f'
 
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
