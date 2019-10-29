$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.268.msi'
$checksum   = '1be217f65c11d4166a7dc4e77a05847abf5357a5221a5c3b156fd110b4e6d244'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.268.msi'
$checksum64 = '789f9fc18ca71710b7cf8a1d3a0871c1f0ae66b1fc35323c83a3e0f96e572725'
 
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
