using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XESAE.Controllers;

namespace XESAE
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HorarioPage : ContentPage
    {
        HorarioController horarios;

        public HorarioPage(HorarioController _horarios)
        {
            InitializeComponent();

            horarios = _horarios;
            horario.ItemsSource = horarios.ListaHorarios; //adiciona os objetos à listview
        }
    }
}