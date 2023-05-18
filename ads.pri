INCLUDEPATH += $${PWD}/src

CONFIG(debug, debug|release){
    win32-g++ {
    	versionAtLeast(QT_VERSION, 5.15.0) {
                LIBS += -L$${PWD}/build/lib -lqtadvanceddocking
    	}
    	else {
                LIBS += -L$${PWD}/build/lib -lqtadvanceddockingd
    	}
    }
    else:msvc {
        LIBS += -L$${PWD}/build/lib -lqtadvanceddockingd
    }
    else:mac {
        LIBS += -L$${PWD}/build/lib -lqtadvanceddocking_debug
    }
    else {
        LIBS += -L$${PWD}/build/lib -lqtadvanceddocking
    }
}
else{
    LIBS += -L$${PWD}/build/lib -lqtadvanceddocking
}


unix:!macx {
    LIBS += -lxcb
}
