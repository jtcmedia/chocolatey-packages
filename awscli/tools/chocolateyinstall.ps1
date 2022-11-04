$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.2.msi'
$checksum   = '4cf42eb81ffa1444c08441ea4aa479ef81bb0fd395b7a0eb89938fb05a6d7c9b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.2.msi'
$checksum64 = '68ad5f731e203363e8a60b02d8658f8b23b06abe5bbe6e0e8ed03a237a4ec24c'
 
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
