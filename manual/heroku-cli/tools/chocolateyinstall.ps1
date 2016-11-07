$ErrorActionPreference = 'Stop';

$packageName= 'heroku-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/assets.heroku.com/heroku-toolbelt/heroku-toolbelt.exe'
$checksum32	= 'c7dfb99f12d691f510c1174253c68de50e1cc15b8baeb972485b15c458d960c2'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Heroku Toolbelt*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
