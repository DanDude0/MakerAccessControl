//Copyright Royce Pipkins 2010
//May be used under the terms of the GPL V3 or higher. http://www.gnu.org/licenses/gpl.html
#include <QtCore/QCoreApplication>
#include "busmngr.h"


int main(int argc, char *argv[])
{
    qDebug() << "AccessServer Started";

	QCoreApplication a(argc, argv);
	BusMngr mngr("COM1");

    return a.exec();
}
