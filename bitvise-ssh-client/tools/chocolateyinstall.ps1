$ErrorActionPreference = 'Stop';

$packageName= 'bitvise-ssh-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://bvdl.s3-eu-west-1.amazonaws.com/BvSshClient-Inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs	= '-acceptEULA -force -noDesktopIcon'
  validExitCodes= @(0)

  softwareName  = 'Bitvise SSH Client*'
  checksum      = 'c54d199f63f6b039fb7bf9b093f9ae4e'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
