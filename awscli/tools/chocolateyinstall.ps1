$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.56.msi'
$checksum   = 'd675908cf5ed800980d8536c8d628a91b876b9f49a9348ee6ca7c47682f51150'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.56.msi'
$checksum64 = 'd0a0115e6c8cc888098dae3b3df5fe4ca7e2f0076c57265d7faa40e0e9cc1406'
 
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
