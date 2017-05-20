.class Lcom/liulishuo/filedownloader/p$b;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/p$b;->b()V

    .line 79
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/p$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liulishuo/filedownloader/p$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v2, "LauncherTask"

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/p$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 124
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "expire %d tasks"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/p$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 126
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 130
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/p$b;->b()V

    .line 131
    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/w$b;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/liulishuo/filedownloader/p$c;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/p$c;-><init>(Lcom/liulishuo/filedownloader/w$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public b(Lcom/liulishuo/filedownloader/w$b;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liulishuo/filedownloader/p$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
