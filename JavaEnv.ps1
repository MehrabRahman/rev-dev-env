Disable-UAC

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions

RefreshEnv
choco install -y git.install
choco install -y adoptopenjdk8
choco install -y maven
choco install -y notepadplusplus
choco install -y springtoolsuite 

Enable-UAC