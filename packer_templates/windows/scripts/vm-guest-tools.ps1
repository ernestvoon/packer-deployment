# Install the Oracle certificate first
certutil -addstore -f "TrustedPublisher" E:\cert\oracle-vbox.cer

Start-Process -FilePath "E:\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait