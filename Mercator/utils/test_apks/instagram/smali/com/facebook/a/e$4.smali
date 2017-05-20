.class final Lcom/facebook/a/e$4;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/a;

.field final synthetic b:Lcom/facebook/a/c;


# direct methods
.method constructor <init>(Lcom/facebook/a/a;Lcom/facebook/a/c;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/a/e$4;->a:Lcom/facebook/a/a;

    iput-object p2, p0, Lcom/facebook/a/e$4;->b:Lcom/facebook/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/a/e;->c()Lcom/facebook/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/a/e$4;->a:Lcom/facebook/a/a;

    iget-object v2, p0, Lcom/facebook/a/e$4;->b:Lcom/facebook/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/d;->a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    .line 102
    invoke-static {}, Lcom/facebook/a/g;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/g$a;->b:Lcom/facebook/a/g$a;

    if-eq v0, v1, :cond_1

    .line 104
    invoke-static {}, Lcom/facebook/a/e;->c()Lcom/facebook/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/d;->b()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 106
    sget-object v0, Lcom/facebook/a/h;->e:Lcom/facebook/a/h;

    invoke-static {v0}, Lcom/facebook/a/e;->b(Lcom/facebook/a/h;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lcom/facebook/a/e;->d()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/facebook/a/e;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/facebook/a/e;->e()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/e;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
