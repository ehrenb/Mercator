.class public Lcm/aptoide/pt/v8engine/MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MyGLSurfaceView.java"


# instance fields
.field private final myGLRenderer:Lcm/aptoide/pt/v8engine/MyGLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->setZOrderOnTop(Z)V

    .line 18
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 19
    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/MyGLRenderer;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/MyGLRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->myGLRenderer:Lcm/aptoide/pt/v8engine/MyGLRenderer;

    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->myGLRenderer:Lcm/aptoide/pt/v8engine/MyGLRenderer;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MyGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 28
    return-void
.end method
