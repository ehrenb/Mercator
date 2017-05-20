.class public Lcom/b/b/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/b/b/cr;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field private final g:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/cs;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/b/b/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/bf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/b/b/bf$1;

    invoke-direct {v0, p0}, Lcom/b/b/bf$1;-><init>(Lcom/b/b/bf;)V

    iput-object v0, p0, Lcom/b/b/bf;->g:Lcom/b/b/bp;

    .line 57
    iput-wide v2, p0, Lcom/b/b/bf;->c:J

    .line 58
    iput-wide v2, p0, Lcom/b/b/bf;->d:J

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/b/bf;->e:J

    .line 60
    iput-wide v2, p0, Lcom/b/b/bf;->f:J

    .line 62
    iput-wide v2, p0, Lcom/b/b/bf;->h:J

    .line 73
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/b/b/bf;->g:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 75
    new-instance v0, Lcom/b/b/bf$2;

    invoke-direct {v0, p0}, Lcom/b/b/bf$2;-><init>(Lcom/b/b/bf;)V

    iput-object v0, p0, Lcom/b/b/bf;->k:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/b/b/bf;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/b/b/bf;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/b/b/bf;)Lcom/b/b/bp;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/b/b/bf;->g:Lcom/b/b/bp;

    return-object v0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v0

    .line 1120
    iget-wide v0, v0, Lcom/b/b/ct;->a:J

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 121
    iget-wide v2, p0, Lcom/b/b/bf;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/b/bf;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/b/b/bf;->d:J

    sub-long/2addr v0, v2

    .line 155
    iget-wide v2, p0, Lcom/b/b/bf;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/b/b/bf;->h:J

    .line 157
    iget-wide v0, p0, Lcom/b/b/bf;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 155
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/b/b/bf;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/b/bf;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/bf;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/bf;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/bf;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
