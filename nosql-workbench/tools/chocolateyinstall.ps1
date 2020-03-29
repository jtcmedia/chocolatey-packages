$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://nosql-workbench-for-amazon-dynamodb.s3.amazonaws.com/NoSQL+Workbench+for+Amazon+DynamoDB-win-1.0.0.exe'
$checksum64 = 'f1b3e1c02dff24c48a7b11f4386beefd35f078d624da7e57fc2c780d58d99a9a'

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
