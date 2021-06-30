#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->setWindowTitle("Main Window");
    num1 = 999;
    ui->label->setText(QString::number(num1.plus1()));
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_actionNumber_Plus_1_triggered()
{
    ui->label->setText(QString::number(num1.plus1()));
}

void MainWindow::on_actionAnother_App_triggered()
{
    Dialog* dialog = new Dialog(this);
    dialog->show();
}
