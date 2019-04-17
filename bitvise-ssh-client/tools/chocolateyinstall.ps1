$ErrorActionPreference = 'Stop';

$packageName= 'bitvise-ssh-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bitvise.com/BvSshClient-Inst.exe'
$checksum32 = 'f0426244abea9688239c9f1e1b94e852f91f1ee54d77906e11626a1d7abee558'

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
