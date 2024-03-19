$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.65.msi'
$checksum   = '204b9fcdfb684c9c49485cc339652b034be477d72b221884f0e363445f051ce1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.65.msi'
$checksum64 = 'a19cccd16eb38971b4201d333bb4fcc484ccfcdd0e279f8c5222d9e2e9c69824'
 
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
