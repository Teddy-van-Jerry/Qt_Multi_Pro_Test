#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLayout>
#include "../Lib/lib.h"
#include "../Dialog/dialog.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_actionNumber_Plus_1_triggered();

    void on_actionAnother_App_triggered();

private:
    Ui::MainWindow *ui;

    Lib num1 = 0;
};
#endif // MAINWINDOW_H
