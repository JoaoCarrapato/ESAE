using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using XESAE.Controllers;
using XESAE.Cursos;

namespace XESAE
{
    public partial class MainPage : ContentPage
    {
        HorarioController horarios;
        //UserController user;
        CursoController cursos;
        public MainPage()
        {
            InitializeComponent();
            //inicia o controller
            cursos = new CursoController();
            horarios = new HorarioController();
            
        }

        private void btn_Login_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new LoginPage());
        }

        private void btn_Portal_Clicked(object sender, EventArgs e)
        {

        }

        private void btn_Noticias_Clicked(object sender, EventArgs e)
        {

        }

        private void btn_Contacto_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ContactosPage());
        }

        private void btn_Horario_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new HorarioPage(horarios));
        }

        private void btn_person_Clicked(object sender, EventArgs e)
        {
            Debug.WriteLine("Clicaram");          
            Navigation.PushAsync( new PersonPage());
        }

        private void btn_Cursos_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new CursoPage(cursos));
        }

        private void btn_Estagios_Clicked(object sender, EventArgs e)
        {

        }

        private void btn_Eventos_Clicked(object sender, EventArgs e)
        {

        }
    }
}
