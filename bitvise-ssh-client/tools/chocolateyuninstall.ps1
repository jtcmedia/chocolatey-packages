$ErrorActionPreference = 'Stop';

$packageName = 'bitvise-ssh-client'
$softwareName = 'Bitvise SSH Client*'
$installerType = 'EXE' 

$silentArgs = '-unat'
$validExitCodes = @(1)

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

  $key[0] | % { 
    $file = "$($_.UninstallString)"
	
	Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
