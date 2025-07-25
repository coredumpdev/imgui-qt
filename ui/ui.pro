QT = core

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

LIBS += -lGL -lglfw

SOURCES += \
        application.cpp \
        imgui/imgui.cpp \
        imgui/imgui_demo.cpp \
        imgui/imgui_draw.cpp \
        imgui/imgui_impl_glfw.cpp \
        imgui/imgui_impl_opengl3.cpp \
        imgui/imgui_tables.cpp \
        imgui/imgui_widgets.cpp \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    application.h \
    imgui/imconfig.h \
    imgui/imgui.h \
    imgui/imgui_impl_glfw.h \
    imgui/imgui_impl_opengl3.h \
    imgui/imgui_impl_opengl3_loader.h \
    imgui/imgui_internal.h \
    imgui/imstb_rectpack.h \
    imgui/imstb_textedit.h \
    imgui/imstb_truetype.h
