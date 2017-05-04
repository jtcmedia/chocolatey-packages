$ErrorActionPreference = 'Stop';

$packageName= 'bitvise-ssh-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://bvdl.s3-eu-west-1.amazonaws.com/BvSshClient-Inst.exe'
$checksum32 = 'd4b33a33179c9287493f353810f9b0d7b9b09d686003fe2f5c09e0841582f7f1'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs	= '-acceptEULA -force -noDesktopIcon'
  validExitCodes= @(0)

  softwareName  = 'Bitvise SSH Client*'
  checksum      = $checksum32
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
