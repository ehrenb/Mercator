.class final Lcom/b/b/bt$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/bt;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/bt;


# direct methods
.method constructor <init>(Lcom/b/b/bt;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/b/b/bt$2;->a:Lcom/b/b/bt;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 113
    invoke-static {p1}, Lcom/b/b/bt;->a(Ljava/lang/Runnable;)Lcom/b/b/di;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/b/b/bt$2;->a:Lcom/b/b/bt;

    invoke-static {v1}, Lcom/b/b/bt;->a(Lcom/b/b/bt;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/b/b/bt$2;->a:Lcom/b/b/bt;

    invoke-static {v2}, Lcom/b/b/bt;->a(Lcom/b/b/bt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v1, p0, Lcom/b/b/bt$2;->a:Lcom/b/b/bt;

    invoke-static {v1, v0}, Lcom/b/b/bt;->a(Lcom/b/b/bt;Lcom/b/b/di;)V

    .line 123
    new-instance v1, Lcom/b/b/bt$2$1;

    invoke-direct {v1, p0, v0}, Lcom/b/b/bt$2$1;-><init>(Lcom/b/b/bt$2;Lcom/b/b/di;)V

    .line 128
    invoke-virtual {v1}, Lcom/b/b/bt$2$1;->run()V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
