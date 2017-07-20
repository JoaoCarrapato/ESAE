using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XESAE.Controllers;


namespace XESAE
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PersonPage : ContentPage
    {
        HorarioController horarios;
        UserController users;
        ObservableCollection<Menu> menus = new ObservableCollection<Menu>();
        public PersonPage()
        {
            InitializeComponent();

            horarios = new HorarioController();
            users = new UserController();

            MenuView.ItemsSource = menus;
           
         menus.Add(new Menu { name = "Perfil" });
         menus.Add(new Menu { name = "Mensagens" });
         menus.Add(new Menu { name = "Notas" });
         menus.Add(new Menu { name = "Horarios" });
         menus.Add(new Menu { name = "Finanças" });
         menus.Add(new Menu { name = "Configurações" });
         menus.Add(new Menu { name = "Sobre" });
         menus.Add(new Menu { name = "Contactos" });
         menus.Add(new Menu { name = "Terminar Sessão" });

        }

        private void MenuView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var menus = e.SelectedItem as Menu;

            if (menus== null)
            {
                return;
            }

            ContentPage page = null;

            switch (menus.name)
            {
                case "Perfil":
                    page = new PerfilPage(users);
                    break;
                case "Mensagens":
                    page = new MensagensPage();
                    break;
                case "Notas":
                    page = new NotasPage();
                    break;
                case "Horarios":
                    page = new HorarioPage(horarios);
                    break;
                case "Finanças":
                    page = new FinançasPage();
                    break;
                case "Configurações":
                    page = new ConfiguracõesPage();
                    break;
                case "Sobre":
                    page = new SobrePage();
                    break;
                case "Contactos":
                    page = new ContactosPage();
                    break;
                case "Terminar Sessão":
                    
                    break;
                default:
                    page = new PersonPage();
                    break;
            }

            page.BindingContext = menus;
            Navigation.PushModalAsync(page);
        }
    }
}