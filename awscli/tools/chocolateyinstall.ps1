$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.44.msi'
$checksum   = '01021838b437cd12df866c1e696461e0a9bc26d5da5dc7bb6ba164f45bdf6920'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.44.msi'
$checksum64 = 'bdbeb67f50254e89e023ae30a10a4cc24ea96057f4bc955739bdf0f5e1a5fb85'
 
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
