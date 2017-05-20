.class public final Lrx/g/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/g/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/g;

.field private final b:Lrx/g;

.field private final c:Lrx/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->f()Lrx/f/g;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lrx/f/g;->d()Lrx/g;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    iput-object v1, p0, Lrx/g/a;->a:Lrx/g;

    .line 86
    :goto_0
    invoke-virtual {v0}, Lrx/f/g;->e()Lrx/g;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    iput-object v1, p0, Lrx/g/a;->b:Lrx/g;

    .line 93
    :goto_1
    invoke-virtual {v0}, Lrx/f/g;->f()Lrx/g;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    iput-object v0, p0, Lrx/g/a;->c:Lrx/g;

    .line 99
    :goto_2
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lrx/f/g;->a()Lrx/g;

    move-result-object v1

    iput-object v1, p0, Lrx/g/a;->a:Lrx/g;

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lrx/f/g;->b()Lrx/g;

    move-result-object v1

    iput-object v1, p0, Lrx/g/a;->b:Lrx/g;

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {}, Lrx/f/g;->c()Lrx/g;

    move-result-object v0

    iput-object v0, p0, Lrx/g/a;->c:Lrx/g;

    goto :goto_2
.end method

.method public static a()Lrx/g;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lrx/c/c/c;->a:Lrx/c/c/c;

    return-object v0
.end method

.method public static b()Lrx/g;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lrx/c/c/j;->a:Lrx/c/c/j;

    return-object v0
.end method

.method public static c()Lrx/g;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lrx/g/a;->f()Lrx/g/a;

    move-result-object v0

    iget-object v0, v0, Lrx/g/a;->a:Lrx/g;

    invoke-static {v0}, Lrx/f/c;->a(Lrx/g;)Lrx/g;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lrx/g;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lrx/g/a;->f()Lrx/g/a;

    move-result-object v0

    iget-object v0, v0, Lrx/g/a;->b:Lrx/g;

    invoke-static {v0}, Lrx/f/c;->b(Lrx/g;)Lrx/g;

    move-result-object v0

    return-object v0
.end method

.method private static f()Lrx/g/a;
    .locals 3

    .prologue
    .line 62
    :goto_0
    sget-object v0, Lrx/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/g/a;

    .line 63
    if-eqz v0, :cond_1

    .line 68
    :cond_0
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lrx/g/a;

    invoke-direct {v0}, Lrx/g/a;-><init>()V

    .line 67
    sget-object v1, Lrx/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lrx/g/a;->e()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized e()V
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/g/a;->a:Lrx/g;

    instance-of v0, v0, Lrx/c/c/h;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lrx/g/a;->a:Lrx/g;

    check-cast v0, Lrx/c/c/h;

    invoke-interface {v0}, Lrx/c/c/h;->d()V

    .line 245
    :cond_0
    iget-object v0, p0, Lrx/g/a;->b:Lrx/g;

    instance-of v0, v0, Lrx/c/c/h;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lrx/g/a;->b:Lrx/g;

    check-cast v0, Lrx/c/c/h;

    invoke-interface {v0}, Lrx/c/c/h;->d()V

    .line 248
    :cond_1
    iget-object v0, p0, Lrx/g/a;->c:Lrx/g;

    instance-of v0, v0, Lrx/c/c/h;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lrx/g/a;->c:Lrx/g;

    check-cast v0, Lrx/c/c/h;

    invoke-interface {v0}, Lrx/c/c/h;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_2
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
