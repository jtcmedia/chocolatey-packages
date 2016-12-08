$ErrorActionPreference = 'Stop';

$packageName= 'heroku-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/assets.heroku.com/heroku-toolbelt/heroku-toolbelt.exe'
$checksum32 = '6ac61b279bb569de66f94271286a0bdc6c605da725c8c9080291a3493463c754'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Heroku Toolbelt*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /COMPONENTS="*toolbelt,!toolbelt\git"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
