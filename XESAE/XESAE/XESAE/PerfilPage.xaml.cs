using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XESAE.Controllers;

namespace XESAE
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PerfilPage : ContentPage
	{
        UserController users;
		public PerfilPage (UserController _users)
		{
			InitializeComponent ();

            users = _users;
            user.ItemsSource = users.ListaUsers;
        }
	}
}