.class public Lcom/b/b/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/cb$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Lcom/b/b/cb$a;

.field private d:Lcom/b/b/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/b/b/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/cb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/b/b/cc;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/b/b/cb;->d:Lcom/b/b/cc;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/b/b/cb;)Lcom/b/b/cc;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/b/b/cb;->d:Lcom/b/b/cc;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/b/b/cb;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    .line 38
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/cb;->a:Ljava/lang/String;

    const-string v2, "HttpRequestTimeoutTimer stopped."

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/cb;->c:Lcom/b/b/cb$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 23
    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 23
    :cond_0
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/b/b/cb;->a()V

    .line 27
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "HttpRequestTimeoutTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    .line 28
    new-instance v0, Lcom/b/b/cb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/b/cb$a;-><init>(Lcom/b/b/cb;B)V

    iput-object v0, p0, Lcom/b/b/cb;->c:Lcom/b/b/cb$a;

    .line 29
    iget-object v0, p0, Lcom/b/b/cb;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/b/b/cb;->c:Lcom/b/b/cb$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 31
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/cb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpRequestTimeoutTimer started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
