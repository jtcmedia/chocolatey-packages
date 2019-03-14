$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.124.msi'
$checksum   = 'e4f9052d9ce23d8267bbad45e5bc74173a54ee69f1557e7b68d608251c1ae634'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.124.msi'
$checksum64 = 'b149a9cd45ad83099d3e5bfa7f72832669634aab5eba9e7e5a31765ee896bff1'
 
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
