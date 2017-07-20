using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XLabs.Forms.Controls;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Diagnostics;
using Java.IO;

namespace XESAE
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        string cursoname;
        string tiponame;

        public LoginPage()
        {
            InitializeComponent();


           

           /*CheckBox alunobox = new CheckBox()
            {
                TextColor = Color.Blue,
                CheckedText = "Sou Aluno"

            };
            CheckBox profbox = new CheckBox()
            {
                TextColor = Color.Blue,
                CheckedText = "Sou Professor"

            };*/

            Picker cursopick = new Picker();
            cursopick.WidthRequest = 300;
            cursopick.Title = "Seleciona o Curso";
            cursopick.Items.Add("Gestão de Recursos Humanos e Comportamento Organizacional");
            cursopick.Items.Add("Psicologia Clínica");
            cursopick.Items.Add("Serviço Social");

            Picker tipopick = new Picker();
            tipopick.WidthRequest = 300;
            tipopick.Title = "Seleciona o tipo de utilizador";
            tipopick.Items.Add("Aluno");
            tipopick.Items.Add("Professor");

            cursopick.SelectedIndexChanged += (sender, e) => {
                if (cursopick.SelectedIndex == -1)
                {
                    DisplayAlert("Title", "Curso não esta selecionado", "ok");
                }
                else
                {
                    cursoname = cursopick.Items[cursopick.SelectedIndex];
                    DisplayAlert("Title", cursoname, "ok");
                }
            };
            tipopick.SelectedIndexChanged += (sender, e) => {
                if (tipopick.SelectedIndex == -1)
                {
                    DisplayAlert("Title", "Tipo de utilizador não esta selecionado", "ok");
                }
                else
                {
                    tiponame = tipopick.Items[tipopick.SelectedIndex];
                }
            };
            Content = new StackLayout
            {
                Children = {
                    tipopick,cursopick
                }

            };
        }

            private void btn_Voltar_Clicked(object sender, EventArgs e)
        {
            MainPage mp = new MainPage();
            Navigation.PushModalAsync(mp);
        }

        private void btn_Login_Clicked(object sender, EventArgs e)
        {
            /*if (tiponame = ToString("Aluno"))
            {

            }*/
        }
    }
}