$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.12.2.exe'
$checksum   = 'dc857c51470c77f76d450fc0d8ca870e4c8c7877a19cc647a4deae5b9dfb7e5f'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.12.2.exe'
$checksum64 = '8654218e89dfa5772fb074da27854da454a39deef33a7c558ffab5408e4fb11c'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'Typora*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
