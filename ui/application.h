#ifndef APPLICATION_H
#define APPLICATION_H

#include <iostream>

#include <QObject>
#include <GLFW/glfw3.h>

#include "imgui/imgui.h"
#include "imgui/imgui_impl_glfw.h"
#include "imgui/imgui_impl_opengl3.h"


#define GL_SILENCE_DEPRECATION

class Application : public QObject
{
    Q_OBJECT

public:

private:
    GLFWwindow* window;
    bool m_showDemoWindow;
    bool m_showAnotherWindow;
    ImGuiStyle& style;
    ImGuiIO& io;

public:
    explicit Application(QObject *parent = nullptr);
    ~Application();

    Application& Init();
    void Run();
private:
    void static glfwErrorCallback(int error, const char* description);
};

#endif // APPLICATION_H
