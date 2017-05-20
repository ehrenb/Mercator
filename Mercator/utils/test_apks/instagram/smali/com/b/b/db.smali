.class public final Lcom/b/b/db;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Z

.field c:Z

.field d:Lcom/b/b/dh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/b/b/db;->a:J

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/db;->b:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/b/db;->c:Z

    .line 17
    new-instance v0, Lcom/b/b/db$1;

    invoke-direct {v0, p0}, Lcom/b/b/db$1;-><init>(Lcom/b/b/db;)V

    iput-object v0, p0, Lcom/b/b/db;->d:Lcom/b/b/dh;

    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/db;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/db;->d:Lcom/b/b/dh;

    iget-wide v2, p0, Lcom/b/b/db;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/b/bg;->a(Ljava/lang/Runnable;J)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/db;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/b/db;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/db;->d:Lcom/b/b/dh;

    .line 1165
    if-eqz v1, :cond_1

    .line 1169
    iget-object v0, v0, Lcom/b/b/bg;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/b/db;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
