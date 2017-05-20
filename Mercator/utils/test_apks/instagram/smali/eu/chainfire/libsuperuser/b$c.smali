.class public Leu/chainfire/libsuperuser/b$c;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leu/chainfire/libsuperuser/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
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

.field private final g:Leu/chainfire/libsuperuser/c$a;

.field private final h:Leu/chainfire/libsuperuser/c$a;

.field private i:I

.field private j:Ljava/lang/Process;

.field private k:Ljava/io/DataOutputStream;

.field private l:Leu/chainfire/libsuperuser/c;

.field private m:Leu/chainfire/libsuperuser/c;

.field private n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:I

.field private volatile s:I

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:I

.field private volatile w:Ljava/lang/String;

.field private volatile x:Ljava/lang/String;

.field private volatile y:Leu/chainfire/libsuperuser/b$b;

.field private volatile z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    .line 999
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    .line 1000
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->l:Leu/chainfire/libsuperuser/c;

    .line 1001
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->m:Leu/chainfire/libsuperuser/c;

    .line 1002
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1004
    iput-boolean v5, p0, Leu/chainfire/libsuperuser/b$c;->o:Z

    .line 1005
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1006
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->q:Z

    .line 1007
    iput v5, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    .line 1010
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    .line 1011
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    .line 1013
    iput v5, p0, Leu/chainfire/libsuperuser/b$c;->v:I

    .line 1014
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->w:Ljava/lang/String;

    .line 1015
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->x:Ljava/lang/String;

    .line 1016
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    .line 1017
    iput-object v4, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    .line 1026
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->a(Leu/chainfire/libsuperuser/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->b:Z

    .line 1027
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->b(Leu/chainfire/libsuperuser/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    .line 1028
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->c(Leu/chainfire/libsuperuser/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->d:Z

    .line 1029
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->d(Leu/chainfire/libsuperuser/b$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    .line 1030
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->e(Leu/chainfire/libsuperuser/b$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->f:Ljava/util/Map;

    .line 1031
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->f(Leu/chainfire/libsuperuser/b$a;)Leu/chainfire/libsuperuser/c$a;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->g:Leu/chainfire/libsuperuser/c$a;

    .line 1032
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->g(Leu/chainfire/libsuperuser/b$a;)Leu/chainfire/libsuperuser/c$a;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->h:Leu/chainfire/libsuperuser/c$a;

    .line 1033
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->h(Leu/chainfire/libsuperuser/b$a;)I

    move-result v0

    iput v0, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    .line 1039
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->i(Leu/chainfire/libsuperuser/b$a;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->b:Z

    if-eqz v0, :cond_2

    .line 1040
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    .line 1045
    :goto_0
    if-eqz p2, :cond_0

    .line 1048
    const/16 v0, 0x3c

    iput v0, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    .line 1049
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/b$b;

    sget-object v2, Leu/chainfire/libsuperuser/b;->a:[Ljava/lang/String;

    new-instance v3, Leu/chainfire/libsuperuser/b$c$1;

    invoke-direct {v3, p0, p1, p2}, Leu/chainfire/libsuperuser/b$c$1;-><init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;)V

    invoke-direct {v1, v2, v5, v3, v4}, Leu/chainfire/libsuperuser/b$b;-><init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;Leu/chainfire/libsuperuser/b$d;)V

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1062
    :cond_0
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1063
    const/4 v0, -0x3

    invoke-interface {p2, v5, v0, v4}, Leu/chainfire/libsuperuser/b$e;->onCommandResult(IILjava/util/List;)V

    .line 1066
    :cond_1
    return-void

    .line 1042
    :cond_2
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$a;->i(Leu/chainfire/libsuperuser/b$a;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    goto :goto_0
.end method

.method synthetic constructor <init>(Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;Leu/chainfire/libsuperuser/b$1;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/b$c;-><init>(Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$c;I)I
    .locals 0

    .prologue
    .line 987
    iput p1, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    return p1
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/chainfire/libsuperuser/b$b;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1428
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 1432
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1433
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->e(Leu/chainfire/libsuperuser/b$b;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Leu/chainfire/libsuperuser/b$e;->onCommandResult(IILjava/util/List;)V

    .line 1435
    :cond_2
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/b$b;->e(Leu/chainfire/libsuperuser/b$b;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Leu/chainfire/libsuperuser/b$d;->a(II)V

    goto :goto_0

    .line 1439
    :cond_3
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->i()V

    .line 1440
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/b$c$4;

    invoke-direct {v1, p0, p1, p2, p3}, Leu/chainfire/libsuperuser/b$c$4;-><init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/b$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/b$c;->a(Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    :cond_0
    monitor-exit p0

    return-void

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V
    .locals 2

    .prologue
    .line 1381
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1382
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1386
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->i()V

    .line 1387
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/b$c$3;

    invoke-direct {v1, p0, p2, p1}, Leu/chainfire/libsuperuser/b$c$3;-><init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1398
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Leu/chainfire/libsuperuser/c$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1305
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/b$c;->b()Z

    move-result v0

    .line 1306
    if-nez v0, :cond_0

    .line 1307
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1309
    :cond_0
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1310
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/libsuperuser/b$b;

    .line 1311
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1313
    iput-object v3, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    .line 1314
    iput v1, p0, Leu/chainfire/libsuperuser/b$c;->v:I

    .line 1315
    iput-object v3, p0, Leu/chainfire/libsuperuser/b$c;->w:Ljava/lang/String;

    .line 1316
    iput-object v3, p0, Leu/chainfire/libsuperuser/b$c;->x:Ljava/lang/String;

    .line 1318
    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->a(Leu/chainfire/libsuperuser/b$b;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1320
    :try_start_0
    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    .line 1328
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1329
    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    .line 1330
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->f()V

    .line 1331
    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->a(Leu/chainfire/libsuperuser/b$b;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1332
    const-string v5, "[%s+] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1333
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 1332
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/chainfire/libsuperuser/a;->b(Ljava/lang/String;)V

    .line 1334
    iget-object v5, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " $?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 1337
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >&2\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1338
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :cond_3
    :goto_1
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1353
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1355
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    :cond_4
    return-void

    .line 1343
    :cond_5
    invoke-direct {p0, v1}, Leu/chainfire/libsuperuser/b$c;->a(Z)V

    goto :goto_1

    .line 1345
    :cond_6
    if-nez v0, :cond_3

    .line 1347
    :goto_2
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1348
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/libsuperuser/b$b;

    const/4 v2, -0x2

    invoke-direct {p0, v0, v2, v3}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V

    goto :goto_2

    .line 1355
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1339
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Leu/chainfire/libsuperuser/b$c;I)I
    .locals 0

    .prologue
    .line 987
    iput p1, p0, Leu/chainfire/libsuperuser/b$c;->v:I

    return p1
.end method

.method static synthetic b(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Leu/chainfire/libsuperuser/b$c;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->e()V

    return-void
.end method

.method static synthetic c(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Leu/chainfire/libsuperuser/b$c;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->j()V

    return-void
.end method

.method static synthetic d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/b$c;->a(Z)V

    .line 1234
    return-void
.end method

.method static synthetic e(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/c$a;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->g:Leu/chainfire/libsuperuser/c$a;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 6

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1245
    :cond_1
    :try_start_1
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/b$c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1249
    const/4 v0, -0x2

    .line 1250
    const-string v1, "[%s%%] SHELL_DIED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/a;->a(Ljava/lang/String;)V

    .line 1258
    :goto_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V

    .line 1261
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1265
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1267
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/b$c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1251
    :cond_2
    :try_start_2
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Leu/chainfire/libsuperuser/b$c;->s:I

    iget v1, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    if-lt v0, v1, :cond_0

    .line 1254
    const/4 v0, -0x1

    .line 1255
    const-string v1, "[%s%%] WATCHDOG_EXIT"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private f()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 1274
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->i:I

    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1277
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/libsuperuser/b$c;->s:I

    .line 1278
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1279
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Leu/chainfire/libsuperuser/b$c$2;

    invoke-direct {v1, p0}, Leu/chainfire/libsuperuser/b$c$2;-><init>(Leu/chainfire/libsuperuser/b$c;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method static synthetic f(Leu/chainfire/libsuperuser/b$c;)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->h()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1295
    :cond_0
    return-void
.end method

.method static synthetic g(Leu/chainfire/libsuperuser/b$c;)Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->d:Z

    return v0
.end method

.method static synthetic h(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/c$a;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->h:Leu/chainfire/libsuperuser/c$a;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    .line 1363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    .line 1364
    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    iget v1, p0, Leu/chainfire/libsuperuser/b$c;->v:I

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V

    .line 1366
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->g()V

    .line 1367
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->y:Leu/chainfire/libsuperuser/b$b;

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->z:Ljava/util/List;

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1370
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :cond_0
    monitor-exit p0

    return-void

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1418
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1419
    :try_start_0
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    .line 1420
    monitor-exit v1

    .line 1421
    return-void

    .line 1420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1462
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1463
    :try_start_0
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    .line 1464
    iget v0, p0, Leu/chainfire/libsuperuser/b$c;->r:I

    if-nez v0, :cond_0

    .line 1465
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    :cond_0
    monitor-exit v1

    .line 1468
    return-void

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized k()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1477
    monitor-enter p0

    :try_start_0
    const-string v0, "[%s%%] START"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    .line 1497
    :goto_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    .line 1498
    new-instance v0, Leu/chainfire/libsuperuser/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    .line 1499
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Leu/chainfire/libsuperuser/b$c$5;

    invoke-direct {v5, p0}, Leu/chainfire/libsuperuser/b$c$5;-><init>(Leu/chainfire/libsuperuser/b$c;)V

    invoke-direct {v0, v1, v4, v5}, Leu/chainfire/libsuperuser/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/c$a;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->l:Leu/chainfire/libsuperuser/c;

    .line 1539
    new-instance v0, Leu/chainfire/libsuperuser/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    .line 1540
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Leu/chainfire/libsuperuser/b$c$6;

    invoke-direct {v5, p0}, Leu/chainfire/libsuperuser/b$c$6;-><init>(Leu/chainfire/libsuperuser/b$c;)V

    invoke-direct {v0, v1, v4, v5}, Leu/chainfire/libsuperuser/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/c$a;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->m:Leu/chainfire/libsuperuser/c;

    .line 1572
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->l:Leu/chainfire/libsuperuser/c;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/c;->start()V

    .line 1573
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->m:Leu/chainfire/libsuperuser/c;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/c;->start()V

    .line 1575
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->o:Z

    .line 1576
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->q:Z

    .line 1578
    invoke-direct {p0}, Leu/chainfire/libsuperuser/b$c;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 1583
    :goto_1
    monitor-exit p0

    return v0

    .line 1485
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1486
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1487
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1489
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1490
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 1492
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 1493
    goto :goto_2

    .line 1494
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1581
    :catch_0
    move-exception v0

    move v0, v3

    .line 1583
    goto :goto_1

    .line 1477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 1661
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->o:Z

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1665
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1670
    :goto_0
    :try_start_2
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1675
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->p:Z

    .line 1676
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1677
    :try_start_4
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1678
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1679
    monitor-exit p0

    return-void

    .line 1678
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1661
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1671
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1666
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1687
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    if-nez v1, :cond_0

    .line 1696
    :goto_0
    return v0

    .line 1691
    :cond_0
    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->j:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1747
    invoke-static {}, Leu/chainfire/libsuperuser/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-static {v0}, Leu/chainfire/libsuperuser/a;->a(Ljava/lang/String;)V

    .line 1749
    new-instance v0, Leu/chainfire/libsuperuser/ShellOnMainThreadException;

    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v0, v1}, Leu/chainfire/libsuperuser/ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/b$c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1753
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 1754
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/b$c;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 1756
    :try_start_1
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->t:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1757
    :catch_0
    move-exception v2

    .line 1758
    :try_start_2
    monitor-exit v1

    .line 1785
    :goto_1
    return v0

    .line 1761
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1763
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    .line 1764
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->a:Landroid/os/Handler;

    .line 1765
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 1773
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1774
    :goto_2
    :try_start_3
    iget v2, p0, Leu/chainfire/libsuperuser/b$c;->r:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v2, :cond_2

    .line 1776
    :try_start_4
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c;->u:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1777
    :catch_1
    move-exception v2

    .line 1778
    :try_start_5
    monitor-exit v1

    goto :goto_1

    .line 1781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1761
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1781
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1785
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1070
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$c;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "Application did not close() interactive shell"

    invoke-static {v0}, Leu/chainfire/libsuperuser/a;->a(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Leu/chainfire/libsuperuser/ShellNotClosedException;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/ShellNotClosedException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1076
    return-void
.end method
