using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Timers;

namespace Icosaedr
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            update = new System.Timers.Timer();
            update.Interval = Settings.updateInterval;
            update.AutoReset = true;
            update.Elapsed += Update;
        }
        bool X = false, Y = false, Z = false;
        double oldX, oldY;
        System.Timers.Timer update;
        private void button_Click(object sender, RoutedEventArgs e)
        {
            ModelStorage.ParseFile(Settings.filename);
            Drawer.Draw(canv);
        }

        private void checkBox1_Click(object sender, RoutedEventArgs e)
        {
            Y = !Y;
        }

        private void checkBox2_Click(object sender, RoutedEventArgs e)
        {
            Z = !Z;
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (ModelStorage.vlist != null) update.Enabled = !update.Enabled;
            else MessageBox.Show("Сначала нужно загрузить фигуру!");
        }

        private void canv_MouseUp(object sender, MouseButtonEventArgs e)
        {
        }

        private void canv_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (ModelStorage.vlist != null)
            {
                oldX = e.GetPosition(canv).X;
                oldY = e.GetPosition(canv).Y;
            }
            else MessageBox.Show("Сначала нужно загрузить фигуру!");

        }

        private void Window_Closed(object sender, EventArgs e)
        {
            update.Stop();
        }

        private void Window_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            if (ModelStorage.vlist != null)
            {
                if (Settings.zoom + e.Delta / 10 > 0)
                {
                    Settings.zoom += e.Delta / 10;
                }
                if (!update.Enabled) Drawer.Update(canv);
            }
        }

        private void plus_Click(object sender, RoutedEventArgs e)
        {
            Settings.rotateAngle += Settings.deltaAngle;
        }

        private void minus_Click(object sender, RoutedEventArgs e)
        {
            Settings.rotateAngle -= Settings.deltaAngle;
        }

        private void canv_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed && ModelStorage.vlist != null)
            {
                Drawer.CamZ += e.GetPosition(canv).X - oldX;
                Drawer.CamX += e.GetPosition(canv).Y - oldY;
                oldX = e.GetPosition(canv).X;
                oldY = e.GetPosition(canv).Y;
                if (!update.Enabled) Drawer.Update(canv);
            }
        }

        private void Update(Object source, ElapsedEventArgs e)
        {
            ModelStorage.RotateFigure(Settings.rotateAngle, X, Y, Z);
            Dispatcher.BeginInvoke(new ThreadStart(delegate { Drawer.Update(canv); }));

        }

        private void checkBox_Click(object sender, RoutedEventArgs e)
        {
            X = !X;
        }
    }
}
