using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace MyHotelMain
{
    /// <summary>
    /// Interaction logic for LogOn.xaml
    /// </summary>
    public partial class LogOn : Window
    {
        public LogOn()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(@"Data Source = localhost; port = 3306; Initial Catalog = hotel; User Id = root; password = 2011");

            try
            {
                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                String query = "SELECT * FROM hotel.login WHERE BINARY Username =@username and BINARY Password =@password";
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    MainWindow dashboard = new MainWindow();
                    dashboard.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("USERNAME OR PASSWORD IS INCORRECT");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
