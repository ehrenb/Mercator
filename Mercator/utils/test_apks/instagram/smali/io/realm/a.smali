.class abstract Lio/realm/a;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/a$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lio/realm/internal/async/d;


# instance fields
.field final c:J

.field protected d:Lio/realm/x;

.field protected e:Lio/realm/internal/m;

.field f:Lio/realm/ah;

.field g:Landroid/os/Handler;

.field h:Lio/realm/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/realm/a;->a:Ljava/util/Map;

    .line 69
    invoke-static {}, Lio/realm/internal/async/d;->a()Lio/realm/internal/async/d;

    move-result-object v0

    sput-object v0, Lio/realm/a;->b:Lio/realm/internal/async/d;

    .line 80
    new-instance v0, Lio/realm/internal/a/d;

    invoke-direct {v0}, Lio/realm/internal/a/d;-><init>()V

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Lio/realm/internal/b/a;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Lio/realm/x;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/a;->c:J

    .line 85
    iput-object p1, p0, Lio/realm/a;->d:Lio/realm/x;

    .line 86
    new-instance v0, Lio/realm/internal/m;

    invoke-direct {v0, p1}, Lio/realm/internal/m;-><init>(Lio/realm/x;)V

    iput-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    .line 87
    new-instance v0, Lio/realm/ah;

    iget-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v1}, Lio/realm/internal/m;->g()Lio/realm/internal/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/realm/ah;-><init>(Lio/realm/a;Lio/realm/internal/e;)V

    iput-object v0, p0, Lio/realm/a;->f:Lio/realm/ah;

    .line 88
    new-instance v0, Lio/realm/l;

    invoke-direct {v0, p0}, Lio/realm/l;-><init>(Lio/realm/a;)V

    iput-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    .line 90
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/realm/a;->a(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method protected static a(Lio/realm/x;Lio/realm/ab;Lio/realm/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 713
    if-nez p0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lio/realm/x;->e()Lio/realm/ab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RealmMigration must be provided"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 722
    new-instance v1, Lio/realm/a$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/realm/a$2;-><init>(Lio/realm/x;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/ab;Lio/realm/a$a;)V

    invoke-static {p0, v1}, Lio/realm/v;->a(Lio/realm/x;Lio/realm/v$a;)V

    .line 759
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot migrate a Realm file which doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 761
    invoke-virtual {p0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_2
    return-void
.end method

.method static a(Lio/realm/x;)Z
    .locals 2

    .prologue
    .line 654
    const-string v0, ".management"

    .line 655
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 657
    new-instance v1, Lio/realm/a$1;

    invoke-direct {v1, p0, v0}, Lio/realm/a$1;-><init>(Lio/realm/x;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, Lio/realm/v;->a(Lio/realm/x;Lio/realm/v$a;)V

    .line 685
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lio/realm/a;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 628
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 630
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v6

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log_a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log_b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 639
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 641
    if-nez v3, :cond_0

    .line 642
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Class;J)Lio/realm/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;J)TE;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    .line 579
    iget-object v0, p0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v0

    iget-object v1, p0, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v1, p1}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/k;->a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;

    move-result-object v1

    move-object v0, v1

    .line 580
    check-cast v0, Lio/realm/internal/j;

    .line 581
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    .line 582
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    .line 583
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->h()V

    .line 585
    return-object v1
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .prologue
    .line 593
    if-eqz p2, :cond_0

    .line 594
    iget-object v0, p0, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v0, p2}, Lio/realm/ah;->e(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 596
    new-instance v1, Lio/realm/f;

    invoke-direct {v1}, Lio/realm/f;-><init>()V

    move-object v2, v0

    :goto_0
    move-object v0, v1

    .line 603
    check-cast v0, Lio/realm/internal/j;

    .line 604
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    .line 605
    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-eqz v3, :cond_1

    .line 606
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v3

    invoke-virtual {v2, p3, p4}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    .line 607
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->h()V

    .line 612
    :goto_1
    return-object v1

    .line 599
    :cond_0
    iget-object v0, p0, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v0, p1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->h()Lio/realm/internal/k;

    move-result-object v1

    iget-object v2, p0, Lio/realm/a;->f:Lio/realm/ah;

    invoke-virtual {v2, p1}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/realm/internal/k;->a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;

    move-result-object v1

    move-object v2, v0

    goto :goto_0

    .line 609
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    sget-object v2, Lio/realm/internal/f;->a:Lio/realm/internal/f;

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    goto :goto_1
.end method

.method a(J)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 554
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->a(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Lio/realm/internal/Table;->d()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 556
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v4, "version"

    invoke-virtual {v1, v0, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    .line 557
    invoke-virtual {v1}, Lio/realm/internal/Table;->e()J

    :cond_0
    move-wide v4, v2

    move-wide v6, p1

    .line 559
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->b(JJJ)V

    .line 560
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 108
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 109
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/realm/a;->g:Landroid/os/Handler;

    .line 111
    sget-object v0, Lio/realm/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lio/realm/a;->g:Landroid/os/Handler;

    iget-object v2, p0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0, p1}, Lio/realm/l;->a(Z)V

    .line 116
    return-void

    .line 112
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lio/realm/a;->b()V

    goto :goto_0
.end method

.method a(ZZ)V
    .locals 7

    .prologue
    const v6, 0x9de8d6d

    const v5, 0xe3d1b0

    .line 366
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 367
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->e()V

    .line 369
    sget-object v0, Lio/realm/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    if-nez p1, :cond_1

    iget-object v3, p0, Lio/realm/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    :cond_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lio/realm/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    :cond_2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 390
    iget-object v4, p0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v4}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 394
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 406
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 407
    iput v6, v3, Landroid/os/Message;->what:I

    .line 408
    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 409
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 417
    :cond_3
    :goto_1
    if-nez v0, :cond_0

    .line 418
    const-string v0, "Cannot update Looper threads when the Looper has quit. Use realm.setAutoRefresh(false) to prevent this."

    invoke-static {v0}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 414
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    goto :goto_1

    .line 423
    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 134
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    sget-object v0, Lio/realm/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lio/realm/a;->g:Landroid/os/Handler;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lio/realm/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    iput-object v2, p0, Lio/realm/a;->g:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 337
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->d()V

    .line 338
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 504
    iget-wide v0, p0, Lio/realm/a;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    invoke-static {p0}, Lio/realm/v;->a(Lio/realm/a;)V

    .line 509
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0, v0, v0}, Lio/realm/a;->a(ZZ)V

    .line 348
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 435
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->f()V

    .line 436
    return-void
.end method

.method protected f()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    iget-wide v0, p0, Lio/realm/a;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remember to call close() on all Realm instances. Realm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/realm/a;->d:Lio/realm/x;

    .line 769
    invoke-virtual {v1}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is being finalized without being closed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "this can lead to running out of native memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V

    .line 773
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 774
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lio/realm/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lio/realm/a;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lio/realm/x;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lio/realm/a;->d:Lio/realm/x;

    return-object v0
.end method

.method public j()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 487
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-wide/16 v0, -0x1

    .line 491
    :goto_0
    return-wide v0

    .line 490
    :cond_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->a(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v2, v3, v2, v3}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method k()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->close()V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    .line 519
    :cond_0
    iget-object v0, p0, Lio/realm/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 522
    :cond_1
    return-void
.end method

.method public l()Z
    .locals 4

    .prologue
    .line 531
    iget-wide v0, p0, Lio/realm/a;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lio/realm/ah;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lio/realm/a;->f:Lio/realm/ah;

    return-object v0
.end method
