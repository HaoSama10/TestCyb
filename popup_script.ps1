Add-Type -AssemblyName PresentationFramework

# Premier pop-up classique
[System.Windows.MessageBox]::Show('Installation de Chrome... TERMINE', 'Information', 'OK', 'Information')

# Deuxième fenêtre WPF pour avertissement critique
$warningWindow = New-Object Windows.Window
$warningWindow.Title = 'AVERTISSEMENT CRITIQUE'
$warningWindow.Content = "TOUS VOS FICHIERS SONT CHIFFRES !`n`n" +
                         "Envoie-moi 0.2 BTC pour obtenir la cle de dechiffrement.`n`n" +
                         "Mon adresse BTC : 1JHCFfjvY7g5Q8QvJ3Qs8Z2jWb3vzr7f7A.`n`n" +
                         "DELAI RESTANT : 24 HEURES SOUS PEINE DE PERDRE VOS FICHIERS DEFINITIVEMENT"
$warningWindow.FontSize = 32
$warningWindow.Width = 700
$warningWindow.Height = 400
$warningWindow.WindowStartupLocation = 'CenterScreen'
$warningWindow.Topmost = $true
$warningWindow.Background = 'Red'
$warningWindow.Foreground = 'White'
$warningWindow.ShowDialog()

# Grande fenêtre WPF pour "TOUS VOS FICHIERS SONT CHIFFRES"
$window = New-Object Windows.Window
$window.Title = 'ALERTE SECURITE'
$window.Content = 'BISOU <3'
$window.FontSize = 48
$window.Width = 800
$window.Height = 400
$window.WindowStartupLocation = 'CenterScreen'
$window.Topmost = $true
$window.Background = 'Red'
$window.Foreground = 'White'
$window.ShowDialog()
