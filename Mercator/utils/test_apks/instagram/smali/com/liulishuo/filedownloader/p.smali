.class Lcom/liulishuo/filedownloader/p;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/p$c;,
        Lcom/liulishuo/filedownloader/p$b;,
        Lcom/liulishuo/filedownloader/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/p$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/liulishuo/filedownloader/p$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/p$b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/p;->a:Lcom/liulishuo/filedownloader/p$b;

    .line 140
    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/p;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/liulishuo/filedownloader/p$a;->a()Lcom/liulishuo/filedownloader/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/liulishuo/filedownloader/w$b;)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p;->a:Lcom/liulishuo/filedownloader/p$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/p$b;->a(Lcom/liulishuo/filedownloader/w$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p;->a:Lcom/liulishuo/filedownloader/p$b;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/p$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/liulishuo/filedownloader/w$b;)V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p;->a:Lcom/liulishuo/filedownloader/p$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/p$b;->b(Lcom/liulishuo/filedownloader/w$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
