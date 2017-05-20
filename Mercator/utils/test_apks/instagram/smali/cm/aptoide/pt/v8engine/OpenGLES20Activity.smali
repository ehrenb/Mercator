.class public Lcm/aptoide/pt/v8engine/OpenGLES20Activity;
.super Landroid/app/Activity;
.source "OpenGLES20Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_main_open_gl:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/OpenGLES20Activity;->setContentView(I)V

    .line 18
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->visualizer:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/OpenGLES20Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 20
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 21
    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 26
    invoke-virtual {p0, v0, v0}, Lcm/aptoide/pt/v8engine/OpenGLES20Activity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method
