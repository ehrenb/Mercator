.class final Lcom/b/b/bk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/bk;


# direct methods
.method constructor <init>(Lcom/b/b/bk;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/b/b/bk$1;->a:Lcom/b/b/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/b/b/bj$a;)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/b/b/bj;

    invoke-direct {v0}, Lcom/b/b/bj;-><init>()V

    .line 107
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/b/b/bj;->a:Ljava/lang/ref/WeakReference;

    .line 108
    iput-object p1, v0, Lcom/b/b/bj;->b:Lcom/b/b/bj$a;

    .line 109
    invoke-virtual {v0}, Lcom/b/b/bj;->b()V

    .line 110
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityCreated for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/b/b/bj$a;->a:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 67
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityDestroyed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/b/b/bj$a;->b:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 103
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/b/b/bj$a;->c:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 85
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResumed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/b/b/bj$a;->d:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 79
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivitySaveInstanceState for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/b/b/bj$a;->g:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 97
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStarted for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/b/b/bj$a;->e:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 73
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-static {}, Lcom/b/b/bk;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStopped for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/b/b/bj$a;->f:Lcom/b/b/bj$a;

    invoke-static {p1, v0}, Lcom/b/b/bk$1;->a(Landroid/app/Activity;Lcom/b/b/bj$a;)V

    .line 91
    return-void
.end method
