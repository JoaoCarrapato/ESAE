using System.Diagnostics;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XESAE.Controllers;
using XESAE.Cursos;

namespace XESAE
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class CursoPage : ContentPage
	{
        CursoController cursos;

		public CursoPage (CursoController _cursos)
		{
			InitializeComponent ();

            cursos = new CursoController();

            /*cursos = _cursos;
            curso.ItemsSource = cursos.ListaCursos; //adiciona os objetos à listview*/
        }

        private void btn_GRH_Clicked(object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new GRHCOPage());
        }
        private void btn_Psi_Clicked(object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new PsiPage());
        }

        private void btn_SS_Clicked(object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new SSPage());
        }

        /* TENTATIVAS FALHADAS DE ABRIR UMA NOVA PAGINA QUANDO SE CLICA NUM ITEM DA LISTVIEW*/

        /* private void CursoView_SelectedItem(object sender, SelectedItemChangedEventArgs e)
         {
              var name = e.SelectedItem as Curso;

              switch (name.name)
              {
                  case "Gestão de Recursos Humanos e Comportamento Organizacional":
                      Navigation.PushAsync(new GRHCOPage());
                      break;
                  case "Psicologia Clínica":
                      Navigation.PushAsync(new PsiPage());
                      break;
                  case "Serviço Social":
                      Navigation.PushAsync(new SSPage());
                      break;

              }*/


        /*var curso = e.SelectedItem;
        Debug.WriteLine(curso);



         if (curso == null)
         {
             return; //ItemSelected is called on deselection, which results in SelectedItem being set to null
         }

         if (curso != null)
         {
             Navigation.PushAsync(new );
         }
    }

    string _selectedItem;

    public string SelectedItem
    {
        get { return _selectedItem; }
        set
        {
            _selectedItem = value;
            // Additional code
            Debug.WriteLine(value);
            value = Navigation.PushAsync(new value());
        }*/

        /*}
        protected void CursoItems_OnItemTapped(object sender, ItemTappedEventArgs args)
        {
            /*var cursoitem = (MyItemClass)args.Item;
            var newpage = new MyNextPage(cursoitem.name);
            Navigation.PushAsync(newpage);
        }*/
    }
    }