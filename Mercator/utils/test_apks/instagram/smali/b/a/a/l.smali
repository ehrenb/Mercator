.class public Lb/a/a/l;
.super Lb/a/a;
.source "JmDNSImpl.java"

# interfaces
.implements Lb/a/a/i;
.implements Lb/a/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l$7;,
        Lb/a/a/l$b;,
        Lb/a/a/l$c;,
        Lb/a/a/l$a;
    }
.end annotation


# static fields
.field private static d:Ld/a/b;

.field private static final r:Ljava/util/Random;


# instance fields
.field final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lb/a/a/m$a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Thread;

.field private volatile e:Ljava/net/InetAddress;

.field private volatile f:Ljava/net/MulticastSocket;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lb/a/a/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lb/a/a/a;

.field private final j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/l$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Lb/a/a$a;

.field private m:Lb/a/a/k;

.field private n:Ljava/lang/Thread;

.field private o:I

.field private p:J

.field private final q:Ljava/util/concurrent/ExecutorService;

.field private final s:Ljava/util/concurrent/locks/ReentrantLock;

.field private t:Lb/a/a/c;

.field private final u:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lb/a/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/l;->d:Ld/a/b;

    .line 335
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lb/a/a/l;->r:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 394
    invoke-direct {p0}, Lb/a/a;-><init>()V

    .line 318
    new-instance v0, Lb/a/a/c/a;

    const-string v1, "JmDNS"

    invoke-direct {v0, v1}, Lb/a/a/c/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    .line 340
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lb/a/a/l;->s:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1734
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/l;->w:Ljava/lang/Object;

    .line 395
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "JmDNS instance created"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 398
    :cond_0
    new-instance v0, Lb/a/a/a;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lb/a/a/a;-><init>(I)V

    iput-object v0, p0, Lb/a/a/l;->i:Lb/a/a/a;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->g:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->h:Ljava/util/Set;

    .line 403
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    .line 405
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 408
    invoke-static {p1, p0, p2}, Lb/a/a/k;->a(Ljava/net/InetAddress;Lb/a/a/l;Ljava/lang/String;)Lb/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    .line 409
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lb/a/a/l;->v:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/l;->a(Lb/a/a/k;)V

    .line 422
    invoke-virtual {p0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/l;->a(Ljava/util/Collection;)V

    .line 424
    invoke-virtual {p0}, Lb/a/a/l;->j()V

    .line 425
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static F()Ljava/util/Random;
    .locals 1

    .prologue
    .line 2238
    sget-object v0, Lb/a/a/l;->r:Ljava/util/Random;

    return-object v0
.end method

.method private M()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 479
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "closeMulticastSocket()"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_3

    .line 486
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 497
    :goto_1
    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    :try_start_2
    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "closeMulticastSocket(): waiting for jmDNS monitor"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 505
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    const-string v2, "closeMulticastSocket() Close socket exception "

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    :goto_3
    iput-object v3, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    .line 518
    :cond_3
    return-void

    .line 512
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 507
    :catch_1
    move-exception v0

    goto :goto_2

    .line 487
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private N()V
    .locals 4

    .prologue
    .line 2046
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "disposeServiceCollectors()"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 2049
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2050
    iget-object v1, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/l$b;

    .line 2051
    if-eqz v1, :cond_1

    .line 2052
    invoke-virtual {p0, v0, v1}, Lb/a/a/l;->b(Ljava/lang/String;Lb/a/e;)V

    .line 2053
    iget-object v3, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2056
    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2209
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2210
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2211
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2212
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2214
    :cond_0
    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lb/a/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 1464
    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v4

    sget-object v5, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    invoke-virtual {v4, v5}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v4

    sget-object v5, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    invoke-virtual {v4, v5}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1465
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1467
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1470
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1471
    return-object v1
.end method

.method private a(Lb/a/a/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    .line 445
    const-string v0, "FF02::FB"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    .line 450
    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0}, Lb/a/a/l;->M()V

    .line 462
    :cond_1
    new-instance v0, Ljava/net/MulticastSocket;

    sget v1, Lb/a/a/a/a;->a:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    .line 463
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/a/a/k;->e()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 465
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Lb/a/a/k;->e()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_2
    :goto_1
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 473
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 474
    return-void

    .line 447
    :cond_3
    const-string v0, "224.0.0.251"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMulticastSocket() Set network interface exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lb/a/e;Z)V
    .locals 9

    .prologue
    .line 935
    new-instance v2, Lb/a/a/m$a;

    invoke-direct {v2, p2, p3}, Lb/a/a/m$a;-><init>(Lb/a/e;Z)V

    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 937
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 938
    if-nez v0, :cond_6

    .line 939
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lb/a/a/l$b;

    invoke-direct {v1, p1}, Lb/a/a/l$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/e;

    const/4 v1, 0x1

    invoke-direct {p0, v3, v0, v1}, Lb/a/a/l;->a(Ljava/lang/String;Lb/a/e;Z)V

    .line 945
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 947
    :goto_0
    if-eqz v1, :cond_2

    .line 948
    monitor-enter v1

    .line 949
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 956
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a;->a()Ljava/util/Collection;

    move-result-object v0

    .line 957
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 958
    check-cast v0, Lb/a/a/h;

    .line 959
    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v5

    sget-object v6, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    if-ne v5, v6, :cond_3

    .line 960
    invoke-virtual {v0}, Lb/a/a/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 963
    new-instance v5, Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/a/h;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lb/a/a/h;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lb/a/a/h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lb/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lb/a/a/h;->q()Lb/a/d;

    move-result-object v0

    invoke-direct {v5, p0, v6, v7, v0}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 952
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 968
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c;

    .line 969
    invoke-virtual {v2, v0}, Lb/a/a/m$a;->a(Lb/a/c;)V

    goto :goto_2

    .line 972
    :cond_5
    invoke-virtual {p0, p1}, Lb/a/a/l;->a(Ljava/lang/String;)V

    .line 973
    return-void

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lb/a/a/r;

    invoke-direct {v0, p0}, Lb/a/a/r;-><init>(Lb/a/a/l;)V

    iput-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    .line 430
    iget-object v0, p0, Lb/a/a/l;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l;->f()V

    .line 433
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 435
    :try_start_0
    new-instance v2, Lb/a/a/q;

    invoke-direct {v2, v0}, Lb/a/a/q;-><init>(Lb/a/d;)V

    invoke-virtual {p0, v2}, Lb/a/a/l;->a(Lb/a/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    const-string v3, "start() Registration exception "

    invoke-interface {v2, v3, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 440
    :cond_1
    return-void
.end method

.method private b(Lb/a/a/q;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1153
    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v4

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 1162
    sget-object v1, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    invoke-virtual {v0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v8

    invoke-virtual {v1, v8}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6, v7}, Lb/a/a/b;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 1163
    check-cast v1, Lb/a/a/h$f;

    .line 1164
    invoke-virtual {v1}, Lb/a/a/h$f;->w()I

    move-result v8

    invoke-virtual {p1}, Lb/a/a/q;->i()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v1}, Lb/a/a/h$f;->t()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v9}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1165
    :cond_2
    sget-object v5, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v5}, Ld/a/b;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1166
    sget-object v5, Lb/a/a/l;->d:Ld/a/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " s.server="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/a/h$f;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v8}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " equals:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/a/h$f;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v8}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1168
    :cond_3
    invoke-static {}, Lb/a/a/n$b;->a()Lb/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v1}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    invoke-interface {v0, v1, v5, v8}, Lb/a/a/n;->a(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/n$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/q;->b(Ljava/lang/String;)V

    move v1, v2

    .line 1176
    :goto_0
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 1177
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 1178
    invoke-static {}, Lb/a/a/n$b;->a()Lb/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v1}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    invoke-interface {v0, v1, v5, v8}, Lb/a/a/n;->a(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/n$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/q;->b(Ljava/lang/String;)V

    move v1, v2

    .line 1182
    :cond_4
    if-nez v1, :cond_0

    .line 1184
    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    return v2

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 4

    .prologue
    .line 1771
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recover() Cleanning up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1775
    :cond_0
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "RECOVERING"

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p0}, Lb/a/a/l;->b()V

    .line 1780
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1783
    invoke-virtual {p0}, Lb/a/a/l;->a()V

    .line 1784
    invoke-direct {p0}, Lb/a/a/l;->N()V

    .line 1786
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v2, v3}, Lb/a/a/l;->b(J)Z

    .line 1789
    invoke-virtual {p0}, Lb/a/a/l;->c()V

    .line 1793
    invoke-direct {p0}, Lb/a/a/l;->M()V

    .line 1796
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a;->clear()V

    .line 1797
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover() All is clean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1801
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1805
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 1806
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->y()Z

    goto :goto_0

    .line 1808
    :cond_2
    invoke-virtual {p0}, Lb/a/a/l;->n()Z

    .line 1811
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/l;->a(Lb/a/a/k;)V

    .line 1812
    invoke-direct {p0, v1}, Lb/a/a/l;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    :goto_1
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recover() We are back!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 1825
    :cond_3
    :goto_2
    return-void

    .line 1813
    :catch_0
    move-exception v0

    .line 1814
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover() Start services exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1819
    :cond_4
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover() Could not recover we are Down!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p0}, Lb/a/a/l;->L()Lb/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1821
    invoke-virtual {p0}, Lb/a/a/l;->L()Lb/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lb/a/a$a;->a(Lb/a/a;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public B()V
    .locals 11

    .prologue
    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1829
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1830
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/b;

    .line 1832
    :try_start_0
    move-object v0, v2

    check-cast v0, Lb/a/a/h;

    move-object v3, v0

    .line 1833
    invoke-virtual {v3, v4, v5}, Lb/a/a/h;->a(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1834
    sget-object v8, Lb/a/a/l$a;->a:Lb/a/a/l$a;

    invoke-virtual {p0, v4, v5, v3, v8}, Lb/a/a/l;->a(JLb/a/a/h;Lb/a/a/l$a;)V

    .line 1835
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v8

    invoke-virtual {v8, v3}, Lb/a/a/a;->c(Lb/a/a/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1845
    :catch_0
    move-exception v3

    .line 1846
    sget-object v8, Lb/a/a/l;->d:Ld/a/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".Error while reaping records: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v3}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1847
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    invoke-virtual {p0}, Lb/a/a/l;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/a/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1836
    :cond_1
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lb/a/a/h;->d(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1837
    invoke-virtual {v3}, Lb/a/a/h;->o()V

    .line 1838
    invoke-virtual {v3}, Lb/a/a/h;->q()Lb/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1840
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1842
    invoke-virtual {p0, v3}, Lb/a/a/l;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1850
    :cond_2
    return-void
.end method

.method public C()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2218
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public D()J
    .locals 2

    .prologue
    .line 2226
    iget-wide v0, p0, Lb/a/a/l;->p:J

    return-wide v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lb/a/a/l;->o:I

    return v0
.end method

.method public G()V
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lb/a/a/l;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2243
    return-void
.end method

.method public H()V
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lb/a/a/l;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2247
    return-void
.end method

.method public I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/l$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2262
    iget-object v0, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public J()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public K()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    return-object v0
.end method

.method public L()Lb/a/a$a;
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lb/a/a/l;->l:Lb/a/a$a;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/q;
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lb/a/a/l;->B()V

    .line 752
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {p0, p1}, Lb/a/a/l;->b(Ljava/lang/String;)Z

    .line 754
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lb/a/a/l$b;

    invoke-direct {v2, p1}, Lb/a/a/l$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/e;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lb/a/a/l;->a(Ljava/lang/String;Lb/a/e;Z)V

    .line 759
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/q;

    move-result-object v0

    .line 761
    invoke-virtual {p0, v0}, Lb/a/a/l;->a(Lb/a/a/q;)V

    .line 763
    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 1061
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "unregisterAllServices()"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1066
    iget-object v2, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    .line 1067
    if-eqz v0, :cond_1

    .line 1068
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v2}, Ld/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling service info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1071
    :cond_2
    invoke-virtual {v0}, Lb/a/a/q;->x()Z

    goto :goto_0

    .line 1074
    :cond_3
    invoke-virtual {p0}, Lb/a/a/l;->i()V

    .line 1076
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    iget-object v1, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/q;

    .line 1078
    if-eqz v1, :cond_4

    .line 1079
    sget-object v3, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v3}, Ld/a/b;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1080
    sget-object v3, Lb/a/a/l;->d:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for service info cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1082
    :cond_5
    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Lb/a/a/q;->b(J)Z

    .line 1083
    iget-object v3, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1087
    :cond_6
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 2230
    iput p1, p0, Lb/a/a/l;->o:I

    .line 2231
    return-void
.end method

.method public a(JLb/a/a/h;Lb/a/a/l$a;)V
    .locals 5

    .prologue
    .line 1249
    .line 1250
    iget-object v1, p0, Lb/a/a/l;->g:Ljava/util/List;

    monitor-enter v1

    .line 1251
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lb/a/a/l;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/d;

    .line 1254
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2, p3}, Lb/a/a/d;->a(Lb/a/a/a;JLb/a/a/b;)V

    goto :goto_0

    .line 1252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1257
    :cond_0
    sget-object v0, Lb/a/a/a/e;->m:Lb/a/a/a/e;

    invoke-virtual {p3}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1260
    invoke-virtual {p3, p0}, Lb/a/a/h;->b(Lb/a/a/l;)Lb/a/c;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Lb/a/c;->d()Lb/a/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lb/a/c;->d()Lb/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/d;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1263
    :cond_1
    invoke-virtual {v0}, Lb/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lb/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/q;

    move-result-object v2

    .line 1264
    invoke-virtual {v2}, Lb/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1265
    new-instance v1, Lb/a/a/p;

    invoke-virtual {v0}, Lb/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v3, v0, v2}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    .line 1269
    :goto_1
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lb/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1271
    if-eqz v0, :cond_4

    .line 1272
    monitor-enter v0

    .line 1273
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    .line 1278
    :goto_2
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v2}, Ld/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1279
    sget-object v2, Lb/a/a/l;->d:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".updating record for event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 1281
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1284
    sget-object v2, Lb/a/a/l$7;->a:[I

    invoke-virtual {p4}, Lb/a/a/l$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1320
    :cond_3
    return-void

    .line 1274
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1276
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1286
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/m$a;

    .line 1287
    invoke-virtual {v0}, Lb/a/a/m$a;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1288
    invoke-virtual {v0, v1}, Lb/a/a/m$a;->a(Lb/a/c;)V

    goto :goto_3

    .line 1290
    :cond_5
    iget-object v3, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lb/a/a/l$4;

    invoke-direct {v4, p0, v0, v1}, Lb/a/a/l$4;-><init>(Lb/a/a/l;Lb/a/a/m$a;Lb/a/c;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    .line 1301
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/m$a;

    .line 1302
    invoke-virtual {v0}, Lb/a/a/m$a;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1303
    invoke-virtual {v0, v1}, Lb/a/a/m$a;->b(Lb/a/c;)V

    goto :goto_4

    .line 1305
    :cond_6
    iget-object v3, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lb/a/a/l$5;

    invoke-direct {v4, p0, v0, v1}, Lb/a/a/l$5;-><init>(Lb/a/a/l;Lb/a/a/m$a;Lb/a/c;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_1

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lb/a/a/b/a;Lb/a/a/a/g;)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k;->a(Lb/a/a/b/a;Lb/a/a/a/g;)V

    .line 575
    return-void
.end method

.method a(Lb/a/a/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1415
    invoke-virtual {p1}, Lb/a/a/c;->i()Ljava/util/List;

    move-result-object v1

    .line 1416
    invoke-direct {p0, v1}, Lb/a/a/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 1418
    invoke-virtual {p0, v0, v4, v5}, Lb/a/a/l;->a(Lb/a/a/h;J)V

    .line 1420
    sget-object v6, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1421
    :cond_0
    invoke-virtual {v0, p0}, Lb/a/a/h;->a(Lb/a/a/l;)Z

    move-result v0

    or-int/2addr v2, v0

    move v0, v1

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 1426
    goto :goto_0

    .line 1423
    :cond_1
    invoke-virtual {v0, p0}, Lb/a/a/h;->a(Lb/a/a/l;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    .line 1428
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 1429
    :cond_3
    invoke-virtual {p0}, Lb/a/a/l;->f()V

    .line 1431
    :cond_4
    return-void
.end method

.method public a(Lb/a/a/c;Ljava/net/InetAddress;I)V
    .locals 2

    .prologue
    .line 1714
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb/a/a/j;->a(Lb/a/a/c;Ljava/net/InetAddress;I)V

    .line 1715
    return-void
.end method

.method public a(Lb/a/a/d;)V
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lb/a/a/l;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1220
    return-void
.end method

.method public a(Lb/a/a/d;Lb/a/a/g;)V
    .locals 5

    .prologue
    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1199
    iget-object v0, p0, Lb/a/a/l;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    if-eqz p2, :cond_1

    .line 1204
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 1205
    invoke-virtual {p2, v0}, Lb/a/a/g;->f(Lb/a/a/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2, v3}, Lb/a/a/b;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1206
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v4

    invoke-interface {p1, v4, v2, v3, v0}, Lb/a/a/d;->a(Lb/a/a/a;JLb/a/a/b;)V

    goto :goto_0

    .line 1210
    :cond_1
    return-void
.end method

.method public a(Lb/a/a/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p1}, Lb/a/a/f;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    invoke-virtual {p1}, Lb/a/a/f;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1573
    invoke-virtual {p1}, Lb/a/a/f;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 1574
    invoke-virtual {p1}, Lb/a/a/f;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 1580
    :goto_0
    invoke-virtual {p1}, Lb/a/a/f;->c()[B

    move-result-object v2

    .line 1581
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    invoke-direct {v3, v2, v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1583
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    :try_start_0
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0, v3}, Lb/a/a/c;-><init>(Ljava/net/DatagramPacket;)V

    .line 1586
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") JmDNS out:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ld/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :cond_0
    :goto_1
    iget-object v0, p0, Lb/a/a/l;->f:Ljava/net/MulticastSocket;

    .line 1594
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1595
    invoke-virtual {v0, v3}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1598
    :cond_1
    return-void

    .line 1576
    :cond_2
    iget-object v1, p0, Lb/a/a/l;->e:Ljava/net/InetAddress;

    .line 1577
    sget v0, Lb/a/a/a/a;->a:I

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4, v0}, Ld/a/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method a(Lb/a/a/h;J)V
    .locals 8

    .prologue
    .line 1323
    .line 1325
    sget-object v2, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    .line 1326
    invoke-virtual {p1, p2, p3}, Lb/a/a/h;->a(J)Z

    move-result v3

    .line 1327
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " handle response: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1332
    :cond_0
    invoke-virtual {p1}, Lb/a/a/h;->i()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lb/a/a/h;->j()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1333
    invoke-virtual {p1}, Lb/a/a/h;->g()Z

    move-result v1

    .line 1334
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a;->a(Lb/a/a/b;)Lb/a/a/b;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 1335
    sget-object v4, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v4}, Ld/a/b;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1336
    sget-object v4, Lb/a/a/l;->d:Ld/a/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handle response cached record: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1338
    :cond_1
    if-eqz v1, :cond_3

    .line 1339
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/a/a/a;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/b;

    .line 1340
    invoke-virtual {p1}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v5

    invoke-virtual {v1}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lb/a/a/h;->f()Lb/a/a/a/d;

    move-result-object v5

    invoke-virtual {v1}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/a/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v1, v0, :cond_2

    .line 1341
    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1, p2, p3}, Lb/a/a/h;->e(J)V

    goto :goto_0

    .line 1345
    :cond_3
    if-eqz v0, :cond_a

    .line 1346
    if-eqz v3, :cond_6

    .line 1348
    invoke-virtual {p1}, Lb/a/a/h;->s()I

    move-result v1

    if-nez v1, :cond_5

    .line 1349
    sget-object v1, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    .line 1350
    invoke-virtual {v0, p2, p3}, Lb/a/a/h;->e(J)V

    move-object v0, p1

    .line 1381
    :goto_1
    invoke-virtual {v0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v2

    sget-object v4, Lb/a/a/a/e;->m:Lb/a/a/a/e;

    if-ne v2, v4, :cond_c

    .line 1383
    const/4 v2, 0x0

    .line 1384
    invoke-virtual {v0}, Lb/a/a/h;->i()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1386
    if-nez v3, :cond_4

    .line 1387
    check-cast v0, Lb/a/a/h$e;

    invoke-virtual {v0}, Lb/a/a/h$e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/l;->b(Ljava/lang/String;)Z

    .line 1402
    :cond_4
    :goto_2
    return-void

    .line 1353
    :cond_5
    sget-object v1, Lb/a/a/l$a;->a:Lb/a/a/l$a;

    .line 1354
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/a/a/a;->c(Lb/a/a/b;)Z

    move-object v0, p1

    goto :goto_1

    .line 1358
    :cond_6
    invoke-virtual {p1, v0}, Lb/a/a/h;->a(Lb/a/a/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lb/a/a/h;->b(Lb/a/a/b;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lb/a/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1359
    :cond_7
    invoke-virtual {p1}, Lb/a/a/h;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1360
    sget-object v1, Lb/a/a/l$a;->b:Lb/a/a/l$a;

    .line 1361
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lb/a/a/a;->a(Lb/a/a/b;Lb/a/a/b;)Z

    move-object v0, p1

    goto :goto_1

    .line 1364
    :cond_8
    sget-object v0, Lb/a/a/l$a;->c:Lb/a/a/l$a;

    .line 1365
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/a/a;->b(Lb/a/a/b;)Z

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .line 1368
    :cond_9
    invoke-virtual {v0, p1}, Lb/a/a/h;->d(Lb/a/a/h;)V

    move-object v1, v2

    .line 1369
    goto :goto_1

    .line 1373
    :cond_a
    if-nez v3, :cond_d

    .line 1374
    sget-object v0, Lb/a/a/l$a;->c:Lb/a/a/l$a;

    .line 1375
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/a/a;->b(Lb/a/a/b;)Z

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .line 1391
    :cond_b
    invoke-virtual {v0}, Lb/a/a/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/a/a/l;->b(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1392
    if-eqz v2, :cond_c

    sget-object v2, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    if-ne v1, v2, :cond_c

    .line 1393
    sget-object v1, Lb/a/a/l$a;->d:Lb/a/a/l$a;

    .line 1398
    :cond_c
    sget-object v2, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    if-eq v1, v2, :cond_4

    .line 1399
    invoke-virtual {p0, p2, p3, v0, v1}, Lb/a/a/l;->a(JLb/a/a/h;Lb/a/a/l$a;)V

    goto :goto_2

    :cond_d
    move-object v1, v2

    move-object v0, p1

    goto/16 :goto_1
.end method

.method public a(Lb/a/a/q;)V
    .locals 2

    .prologue
    .line 1687
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/j;->a(Lb/a/a/q;)V

    .line 1688
    return-void
.end method

.method a(Lb/a/c;)V
    .locals 4

    .prologue
    .line 880
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 882
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    monitor-enter v0

    .line 886
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/m$a;

    .line 889
    iget-object v2, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lb/a/a/l$1;

    invoke-direct {v3, p0, v0, p1}, Lb/a/a/l$1;-><init>(Lb/a/a/l;Lb/a/a/m$a;Lb/a/c;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 899
    :cond_0
    return-void
.end method

.method public a(Lb/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1770

    .line 998
    invoke-virtual {p0}, Lb/a/a/l;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DNS is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    check-cast p1, Lb/a/a/q;

    .line 1003
    invoke-virtual {p1}, Lb/a/a/q;->D()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1004
    invoke-virtual {p1}, Lb/a/a/q;->D()Lb/a/a/l;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_2
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A service information can only be registered once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_3
    invoke-virtual {p1, p0}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 1012
    invoke-virtual {p1}, Lb/a/a/q;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/l;->b(Ljava/lang/String;)Z

    .line 1015
    invoke-virtual {p1}, Lb/a/a/q;->y()Z

    .line 1016
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/q;->c(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->c()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/q;->a(Ljava/net/Inet4Address;)V

    .line 1018
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->d()Ljava/net/Inet6Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/q;->a(Ljava/net/Inet6Address;)V

    .line 1020
    invoke-virtual {p0, v2, v3}, Lb/a/a/l;->a(J)Z

    .line 1022
    invoke-direct {p0, p1}, Lb/a/a/l;->b(Lb/a/a/q;)Z

    .line 1023
    :goto_0
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/a/q;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1024
    invoke-direct {p0, p1}, Lb/a/a/l;->b(Lb/a/a/q;)Z

    goto :goto_0

    .line 1027
    :cond_4
    invoke-virtual {p0}, Lb/a/a/l;->f()V

    .line 1028
    invoke-virtual {p1, v2, v3}, Lb/a/a/q;->a(J)Z

    .line 1030
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1031
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerService() JmDNS registered service as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1033
    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1705
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/j;->a(Ljava/lang/String;)V

    .line 1706
    return-void
.end method

.method public a(Ljava/lang/String;Lb/a/e;)V
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/a/a/l;->a(Ljava/lang/String;Lb/a/e;Z)V

    .line 932
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/b/a;)Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1}, Lb/a/a/k;->a(Lb/a/a/b/a;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/q;
    .locals 10

    .prologue
    .line 768
    new-instance v0, Lb/a/a/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    check-cast v8, [B

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lb/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 769
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v7

    new-instance v1, Lb/a/a/h$e;

    sget-object v3, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    invoke-virtual {v7, v1}, Lb/a/a/a;->a(Lb/a/a/b;)Lb/a/a/b;

    move-result-object v1

    .line 770
    instance-of v2, v1, Lb/a/a/h;

    if-eqz v2, :cond_8

    .line 771
    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1, p4}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v1

    check-cast v1, Lb/a/a/q;

    .line 772
    if-eqz v1, :cond_8

    .line 775
    invoke-virtual {v1}, Lb/a/a/q;->u()Ljava/util/Map;

    move-result-object v2

    .line 776
    const/4 v5, 0x0

    .line 777
    const-string v4, ""

    .line 778
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    sget-object v8, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {v3, v6, v7, v8}, Lb/a/a/a;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Lb/a/a/b;

    move-result-object v3

    .line 779
    instance-of v6, v3, Lb/a/a/h;

    if-eqz v6, :cond_9

    .line 780
    check-cast v3, Lb/a/a/h;

    invoke-virtual {v3, p4}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v8

    .line 781
    if-eqz v8, :cond_9

    .line 782
    new-instance v1, Lb/a/a/q;

    invoke-virtual {v8}, Lb/a/d;->i()I

    move-result v3

    invoke-virtual {v8}, Lb/a/d;->k()I

    move-result v4

    invoke-virtual {v8}, Lb/a/d;->j()I

    move-result v5

    const/4 v7, 0x0

    check-cast v7, [B

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 783
    invoke-virtual {v8}, Lb/a/d;->l()[B

    move-result-object v3

    .line 784
    invoke-virtual {v8}, Lb/a/d;->e()Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    .line 787
    :goto_0
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    sget-object v5, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {v1, v2, v5, v6}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/b;

    .line 788
    instance-of v6, v1, Lb/a/a/h;

    if-eqz v6, :cond_0

    .line 789
    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1, p4}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v6

    .line 790
    if-eqz v6, :cond_0

    .line 791
    invoke-virtual {v6}, Lb/a/d;->g()[Ljava/net/Inet4Address;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_1

    aget-object v9, v7, v1

    .line 792
    invoke-virtual {v4, v9}, Lb/a/a/q;->a(Ljava/net/Inet4Address;)V

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 794
    :cond_1
    invoke-virtual {v6}, Lb/a/d;->l()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lb/a/a/q;->a([B)V

    goto :goto_1

    .line 798
    :cond_2
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    sget-object v5, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {v1, v2, v5, v6}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/b;

    .line 799
    instance-of v5, v1, Lb/a/a/h;

    if-eqz v5, :cond_3

    .line 800
    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1, p4}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v5

    .line 801
    if-eqz v5, :cond_3

    .line 802
    invoke-virtual {v5}, Lb/a/d;->h()[Ljava/net/Inet6Address;

    move-result-object v6

    array-length v7, v6

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v7, :cond_4

    aget-object v8, v6, v1

    .line 803
    invoke-virtual {v4, v8}, Lb/a/a/q;->a(Ljava/net/Inet6Address;)V

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 805
    :cond_4
    invoke-virtual {v5}, Lb/a/d;->l()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lb/a/a/q;->a([B)V

    goto :goto_3

    .line 809
    :cond_5
    invoke-virtual {p0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    invoke-virtual {v4}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lb/a/a/a/e;->q:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {v1, v2, v5, v6}, Lb/a/a/a;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Lb/a/a/b;

    move-result-object v1

    .line 810
    instance-of v2, v1, Lb/a/a/h;

    if-eqz v2, :cond_6

    .line 811
    check-cast v1, Lb/a/a/h;

    invoke-virtual {v1, p4}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_6

    .line 813
    invoke-virtual {v1}, Lb/a/d;->l()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lb/a/a/q;->a([B)V

    .line 816
    :cond_6
    invoke-virtual {v4}, Lb/a/a/q;->l()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_7

    .line 817
    invoke-virtual {v4, v3}, Lb/a/a/q;->a([B)V

    .line 819
    :cond_7
    invoke-virtual {v4}, Lb/a/a/q;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v4

    .line 824
    :cond_8
    return-object v0

    :cond_9
    move-object v2, v4

    move-object v3, v5

    move-object v4, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1606
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->b()V

    .line 1607
    return-void
.end method

.method public b(Lb/a/a/b/a;)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1}, Lb/a/a/k;->b(Lb/a/a/b/a;)V

    .line 583
    return-void
.end method

.method public b(Lb/a/a/c;)V
    .locals 1

    .prologue
    .line 1522
    invoke-virtual {p0}, Lb/a/a/l;->G()V

    .line 1524
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->t:Lb/a/a/c;

    if-ne v0, p1, :cond_0

    .line 1525
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/l;->t:Lb/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l;->H()V

    .line 1530
    return-void

    .line 1528
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/l;->H()V

    throw v0
.end method

.method b(Lb/a/a/c;Ljava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1484
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".handle query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1488
    :cond_0
    const/4 v0, 0x0

    .line 1489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x78

    add-long/2addr v2, v4

    .line 1490
    invoke-virtual {p1}, Lb/a/a/c;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 1491
    invoke-virtual {v0, p0, v2, v3}, Lb/a/a/h;->a(Lb/a/a/l;J)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 1492
    goto :goto_0

    .line 1494
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l;->G()V

    .line 1497
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->t:Lb/a/a/c;

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lb/a/a/l;->t:Lb/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/c;->a(Lb/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    :goto_1
    invoke-virtual {p0}, Lb/a/a/l;->H()V

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1512
    invoke-virtual {p1}, Lb/a/a/c;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 1513
    invoke-virtual {p0, v0, v2, v3}, Lb/a/a/l;->a(Lb/a/a/h;J)V

    goto :goto_2

    .line 1500
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v0

    .line 1501
    invoke-virtual {p1}, Lb/a/a/c;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1502
    iput-object v0, p0, Lb/a/a/l;->t:Lb/a/a/c;

    .line 1504
    :cond_3
    invoke-virtual {p0, v0, p2, p3}, Lb/a/a/l;->a(Lb/a/a/c;Ljava/net/InetAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1508
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/l;->H()V

    throw v0

    .line 1516
    :cond_4
    if-eqz v1, :cond_5

    .line 1517
    invoke-virtual {p0}, Lb/a/a/l;->f()V

    .line 1519
    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;Lb/a/e;)V
    .locals 4

    .prologue
    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 981
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 982
    if-eqz v0, :cond_1

    .line 983
    monitor-enter v0

    .line 984
    :try_start_0
    new-instance v2, Lb/a/a/m$a;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lb/a/a/m$a;-><init>(Lb/a/e;Z)V

    .line 985
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 986
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 987
    iget-object v2, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 989
    :cond_0
    monitor-exit v0

    .line 991
    :cond_1
    return-void

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k;->b(J)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/a/b/a;Lb/a/a/a/g;)Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k;->b(Lb/a/a/b/a;Lb/a/a/a/g;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1094
    .line 1095
    invoke-static {p1}, Lb/a/a/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1096
    sget-object v0, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1097
    sget-object v1, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1098
    sget-object v2, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1099
    sget-object v4, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1103
    sget-object v1, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    sget-object v8, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ".registering service type: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " as: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " subtype: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1106
    :cond_0
    iget-object v1, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v7}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dns-sd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in-addr.arpa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ip6.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1107
    iget-object v0, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lb/a/a/l$c;

    invoke-direct {v1, v4}, Lb/a/a/l$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move v1, v6

    .line 1108
    :goto_3
    if-eqz v1, :cond_6

    .line 1109
    iget-object v0, p0, Lb/a/a/l;->h:Ljava/util/Set;

    iget-object v2, p0, Lb/a/a/l;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lb/a/a/m$b;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/m$b;

    .line 1110
    new-instance v8, Lb/a/a/p;

    const-string v2, ""

    invoke-direct {v8, p0, v4, v2, v11}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    .line 1111
    array-length v9, v0

    move v2, v5

    :goto_4
    if-ge v2, v9, :cond_6

    aget-object v10, v0, v2

    .line 1112
    iget-object v11, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lb/a/a/l$2;

    invoke-direct {v12, p0, v10, v8}, Lb/a/a/l$2;-><init>(Lb/a/a/l;Lb/a/a/m$b;Lb/a/c;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1101
    :cond_1
    const-string v4, ""

    goto/16 :goto_0

    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    .line 1104
    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    move v1, v5

    .line 1107
    goto :goto_3

    :cond_5
    move v1, v5

    .line 1122
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1123
    iget-object v0, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/l$c;

    .line 1124
    if-eqz v0, :cond_9

    invoke-virtual {v0, v3}, Lb/a/a/l$c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1125
    monitor-enter v0

    .line 1126
    :try_start_0
    invoke-virtual {v0, v3}, Lb/a/a/l$c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1128
    invoke-virtual {v0, v3}, Lb/a/a/l$c;->b(Ljava/lang/String;)Z

    .line 1129
    iget-object v1, p0, Lb/a/a/l;->h:Ljava/util/Set;

    iget-object v2, p0, Lb/a/a/l;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lb/a/a/m$b;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb/a/a/m$b;

    .line 1130
    new-instance v2, Lb/a/a/p;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "._sub."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v7, 0x0

    invoke-direct {v2, p0, v3, v4, v7}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    .line 1131
    array-length v3, v1

    :goto_5
    if-ge v5, v3, :cond_7

    aget-object v4, v1, v5

    .line 1132
    iget-object v7, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lb/a/a/l$3;

    invoke-direct {v8, p0, v4, v2}, Lb/a/a/l$3;-><init>(Lb/a/a/l;Lb/a/a/m$b;Lb/a/c;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1131
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    move v1, v6

    .line 1141
    :cond_8
    monitor-exit v0

    .line 1144
    :cond_9
    return v1

    .line 1141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1615
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->c()V

    .line 1616
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 2222
    iput-wide p1, p0, Lb/a/a/l;->p:J

    .line 2223
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0, p1}, Lb/a/a/l;->a(Ljava/lang/String;)V

    .line 1233
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1857
    invoke-virtual {p0}, Lb/a/a/l;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1861
    :cond_0
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling JmDNS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1866
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1870
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "Canceling the timer"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p0}, Lb/a/a/l;->d()V

    .line 1874
    invoke-virtual {p0}, Lb/a/a/l;->a()V

    .line 1875
    invoke-direct {p0}, Lb/a/a/l;->N()V

    .line 1877
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for JmDNS cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1880
    :cond_2
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lb/a/a/l;->b(J)Z

    .line 1883
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "Canceling the state timer"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p0}, Lb/a/a/l;->e()V

    .line 1887
    iget-object v0, p0, Lb/a/a/l;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1890
    invoke-direct {p0}, Lb/a/a/l;->M()V

    .line 1893
    iget-object v0, p0, Lb/a/a/l;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 1894
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l;->c:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 1899
    :cond_3
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->c(Lb/a/a/l;)V

    .line 1901
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1902
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    const-string v1, "JmDNS closed."

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1905
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/l;->a(Lb/a/a/b/a;)Z

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1624
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->d()V

    .line 1625
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 1633
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->e()V

    .line 1634
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1642
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->f()V

    .line 1643
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1651
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->g()V

    .line 1652
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 1660
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->h()V

    .line 1661
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1669
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->i()V

    .line 1670
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 1678
    invoke-static {}, Lb/a/a/j$b;->a()Lb/a/a/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l;->o()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/j$b;->b(Lb/a/a/l;)Lb/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/j;->j()V

    .line 1679
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->g()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->h()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->i()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->j()Z

    move-result v0

    return v0
.end method

.method public o()Lb/a/a/l;
    .locals 0

    .prologue
    .line 566
    return-object p0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->k()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->l()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->m()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->n()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->o()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1923
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    const-string v0, "\t---- Local Host -----"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    const-string v0, "\n\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1927
    const-string v0, "\n\t---- Services -----"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    iget-object v0, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1929
    const-string v3, "\n\t\tService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    iget-object v3, p0, Lb/a/a/l;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1934
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    const-string v0, "\t---- Types ----"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    iget-object v0, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1937
    iget-object v3, p0, Lb/a/a/l;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/l$c;

    .line 1938
    const-string v3, "\n\t\tType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-virtual {v0}, Lb/a/a/l$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    invoke-virtual {v0}, Lb/a/a/l$c;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "no subtypes"

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1943
    :cond_2
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    iget-object v0, p0, Lb/a/a/l;->i:Lb/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    const-string v0, "\t---- Service Collectors ----"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1948
    const-string v3, "\n\t\tService Collector: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    iget-object v3, p0, Lb/a/a/l;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1953
    :cond_3
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    const-string v0, "\t---- Service Listeners ----"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1956
    const-string v3, "\n\t\tService Listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    iget-object v3, p0, Lb/a/a/l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1961
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->p()Z

    move-result v0

    return v0
.end method

.method public v()Lb/a/a/a;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lb/a/a/l;->i:Lb/a/a/a;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lb/a/a/l;->v:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lb/a/a/k;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    return-object v0
.end method

.method public y()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lb/a/a/l;->m:Lb/a/a/k;

    invoke-virtual {v0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 4

    .prologue
    .line 1740
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recover()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p0}, Lb/a/a/l;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/l;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/l;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v1, p0, Lb/a/a/l;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 1752
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/l;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    sget-object v0, Lb/a/a/l;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover() thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 1754
    new-instance v0, Lb/a/a/l$6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".recover()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lb/a/a/l$6;-><init>(Lb/a/a/l;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1765
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
