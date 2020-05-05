$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://s3.amazonaws.com/nosql-workbench-for-amazon-dynamodb/NoSQL+Workbench+for+Amazon+DynamoDB-win-1.1.0.exe'
$checksum64 = '4d02d3151bcf5d62680a353d85aa7fdd7ff9150f1e3243070bba87680ba6abe2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'NoSQL Workbench for Amazon DynamoDB*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
