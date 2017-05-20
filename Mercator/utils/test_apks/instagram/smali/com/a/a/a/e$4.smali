.class Lcom/a/a/a/e$4;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/a/e;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-static {v0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/e;)Lcom/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/z;->a()Lcom/a/a/a/x;

    move-result-object v6

    .line 120
    iget-object v0, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-static {v0}, Lcom/a/a/a/e;->b(Lcom/a/a/a/e;)Lcom/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/f;->a()Lcom/a/a/a/s;

    move-result-object v4

    .line 122
    iget-object v0, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-virtual {v4, v0}, Lcom/a/a/a/s;->a(Lio/fabric/sdk/android/services/c/d;)V

    .line 123
    iget-object v7, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    new-instance v0, Lcom/a/a/a/m;

    iget-object v1, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-static {v1}, Lcom/a/a/a/e;->c(Lcom/a/a/a/e;)Lio/fabric/sdk/android/h;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-static {v2}, Lcom/a/a/a/e;->d(Lcom/a/a/a/e;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    iget-object v3, v3, Lcom/a/a/a/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/a/a/a/e$4;->a:Lcom/a/a/a/e;

    invoke-static {v5}, Lcom/a/a/a/e;->e(Lcom/a/a/a/e;)Lio/fabric/sdk/android/services/network/d;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/m;-><init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/s;Lio/fabric/sdk/android/services/network/d;Lcom/a/a/a/x;)V

    iput-object v0, v7, Lcom/a/a/a/e;->b:Lcom/a/a/a/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
