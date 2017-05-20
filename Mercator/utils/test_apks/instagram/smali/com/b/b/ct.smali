.class public Lcom/b/b/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cx$a;


# static fields
.field private static final b:Ljava/lang/String;

.field private static f:Lcom/b/b/ct;


# instance fields
.field public a:J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/b/b/cr;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/b/cu;

.field private final e:Ljava/lang/Object;

.field private g:J

.field private h:Lcom/b/b/cr;

.field private i:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/cv;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/bj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/b/b/ct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/ct;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/b/b/cu;

    invoke-direct {v0}, Lcom/b/b/cu;-><init>()V

    iput-object v0, p0, Lcom/b/b/ct;->d:Lcom/b/b/cu;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/b/ct;->e:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/b/b/ct$1;

    invoke-direct {v0, p0}, Lcom/b/b/ct$1;-><init>(Lcom/b/b/ct;)V

    iput-object v0, p0, Lcom/b/b/ct;->i:Lcom/b/b/bp;

    .line 67
    new-instance v0, Lcom/b/b/ct$2;

    invoke-direct {v0, p0}, Lcom/b/b/ct$2;-><init>(Lcom/b/b/ct;)V

    iput-object v0, p0, Lcom/b/b/ct;->j:Lcom/b/b/bp;

    .line 104
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v1

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/b/b/ct;->a:J

    .line 107
    const-string v0, "ContinueSessionMillis"

    .line 108
    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/b/ct;->g:J

    .line 109
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 110
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/b/b/ct;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/b/b/ct;->j:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 115
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    iget-object v2, p0, Lcom/b/b/ct;->i:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 117
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/ct;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/b/b/ct;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/ct;->f:Lcom/b/b/ct;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/b/b/ct;

    invoke-direct {v0}, Lcom/b/b/ct;-><init>()V

    sput-object v0, Lcom/b/b/ct;->f:Lcom/b/b/ct;

    .line 42
    :cond_0
    sget-object v0, Lcom/b/b/ct;->f:Lcom/b/b/ct;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/b/b/ct;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/b/b/ct;->f()V

    return-void
.end method

.method static synthetic a(Lcom/b/b/ct;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/b/b/ct;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/b/b/ct;Lcom/b/b/cr;)V
    .locals 2

    .prologue
    .line 25
    .line 1144
    iget-object v1, p0, Lcom/b/b/ct;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->h:Lcom/b/b/cr;

    if-ne v0, p1, :cond_0

    .line 1146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/b/ct;->h:Lcom/b/b/cr;

    .line 1148
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/b/b/ct;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()I
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/cr;

    .line 222
    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session already started with context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    sget-object v0, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session already started with context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/b/b/ct;->d:Lcom/b/b/cu;

    invoke-virtual {v0}, Lcom/b/b/cu;->a()V

    .line 235
    invoke-virtual {p0}, Lcom/b/b/ct;->b()Lcom/b/b/cr;

    move-result-object v0

    .line 237
    if-nez v0, :cond_2

    .line 238
    new-instance v0, Lcom/b/b/cr;

    invoke-direct {v0}, Lcom/b/b/cr;-><init>()V

    .line 240
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session started for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/b/b/cs;

    invoke-direct {v1}, Lcom/b/b/cs;-><init>()V

    .line 243
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    .line 244
    iput-object v0, v1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    .line 245
    sget v2, Lcom/b/b/cs$a;->a:I

    iput v2, v1, Lcom/b/b/cs;->d:I

    .line 246
    invoke-virtual {v1}, Lcom/b/b/cs;->b()V

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v1, p0, Lcom/b/b/ct;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1139
    :try_start_3
    iput-object v0, p0, Lcom/b/b/ct;->h:Lcom/b/b/cr;

    .line 1140
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    :try_start_4
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session resumed for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/b/b/cs;

    invoke-direct {v1}, Lcom/b/b/cs;-><init>()V

    .line 255
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    .line 256
    iput-object v0, v1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    .line 257
    sget v0, Lcom/b/b/cs$a;->c:I

    iput v0, v1, Lcom/b/b/cs;->d:I

    .line 258
    invoke-virtual {v1}, Lcom/b/b/cs;->b()V

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/b/ct;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1140
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/b/ct;->e()I

    move-result v0

    .line 300
    if-lez v0, :cond_0

    .line 301
    const/4 v1, 0x5

    sget-object v2, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session cannot be finalized, sessionContextCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/b/b/ct;->b()Lcom/b/b/cr;

    move-result-object v0

    .line 308
    if-nez v0, :cond_1

    .line 309
    const/4 v0, 0x5

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    const-string v2, "Session cannot be finalized, current session not found"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_1
    :try_start_2
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    const-string v2, "Flurry session ended"

    invoke-static {v1, v2}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/b/b/cs;

    invoke-direct {v1}, Lcom/b/b/cs;-><init>()V

    .line 316
    iput-object v0, v1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    .line 317
    sget v2, Lcom/b/b/cs$a;->e:I

    iput v2, v1, Lcom/b/b/cs;->d:I

    .line 318
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/b/b/cs;->e:J

    .line 319
    invoke-virtual {v1}, Lcom/b/b/cs;->b()V

    .line 323
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    new-instance v2, Lcom/b/b/ct$4;

    invoke-direct {v2, p0, v0}, Lcom/b/b/ct$4;-><init>(Lcom/b/b/ct;Lcom/b/b/cr;)V

    invoke-virtual {v1, v2}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bootstrap for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/b/b/ct;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 333
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/b/ct;->g:J

    .line 335
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/b/b/ct;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/b/b/cr;
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/b/b/ct;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->h:Lcom/b/b/cr;

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/b/b/ct;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 6

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    new-instance v2, Lcom/b/b/cs;

    invoke-direct {v2}, Lcom/b/b/cs;-><init>()V

    .line 202
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/cr;

    iput-object v0, v2, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    .line 204
    sget v0, Lcom/b/b/cs$a;->d:I

    iput v0, v2, Lcom/b/b/cs;->d:I

    .line 205
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/b/b/cs;->e:J

    .line 206
    invoke-virtual {v2}, Lcom/b/b/cs;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 211
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/ct$3;

    invoke-direct {v1, p0}, Lcom/b/b/ct$3;-><init>(Lcom/b/b/ct;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/b/b/ct;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/b/ct;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/cr;

    .line 268
    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x3

    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session cannot be ended, session not found for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    sget-object v0, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session cannot be ended, session not found for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 279
    :cond_1
    :try_start_2
    sget-object v1, Lcom/b/b/ct;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session paused for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/b/b/cs;

    invoke-direct {v1}, Lcom/b/b/cs;-><init>()V

    .line 282
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/b/b/cs;->a:Ljava/lang/ref/WeakReference;

    .line 283
    iput-object v0, v1, Lcom/b/b/cs;->b:Lcom/b/b/cr;

    .line 284
    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/b/b/cs;->e:J

    .line 285
    sget v0, Lcom/b/b/cs$a;->d:I

    iput v0, v1, Lcom/b/b/cs;->d:I

    .line 286
    invoke-virtual {v1}, Lcom/b/b/cs;->b()V

    .line 290
    invoke-direct {p0}, Lcom/b/b/ct;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/b/b/ct;->d:Lcom/b/b/cu;

    iget-wide v2, p0, Lcom/b/b/ct;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/b/b/cu;->a(J)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/b/ct;->a:J

    goto :goto_0

    .line 294
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/b/ct;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
