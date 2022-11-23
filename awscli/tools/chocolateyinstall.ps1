$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.15.msi'
$checksum   = '60f24f38b3f44227f204bc3f8991cdf53869eeebea722b01e58b9d3587d78373'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.15.msi'
$checksum64 = '30a1d21f70e2d73e5a02be3528b4e57f49bd72a7e274f6bb930175b3393ea5fc'
 
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
