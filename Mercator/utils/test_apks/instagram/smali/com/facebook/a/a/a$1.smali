.class final Lcom/facebook/a/a/a$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/a;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/facebook/a/a/b;->b()V

    .line 73
    invoke-static {p1}, Lcom/facebook/a/a/a;->a(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lcom/facebook/a/a/b;->b()V

    .line 88
    invoke-static {p1}, Lcom/facebook/a/a/a;->c(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/a/a/b;->b()V

    .line 82
    invoke-static {p1}, Lcom/facebook/a/a/a;->b(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/facebook/a/g;->c()V

    .line 94
    return-void
.end method
