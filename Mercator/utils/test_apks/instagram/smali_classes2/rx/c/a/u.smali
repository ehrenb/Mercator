.class public final Lrx/c/a/u;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Lrx/j/b;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Lrx/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/b",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/b",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/c/a/u;->a:Lrx/j/b;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/c/a/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object p1, p0, Lrx/c/a/u;->d:Lrx/d/b;

    .line 53
    return-void
.end method

.method private a(Lrx/j;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lrx/b/b",
            "<",
            "Lrx/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lrx/c/a/u$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/c/a/u$1;-><init>(Lrx/c/a/u;Lrx/j;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method private a(Lrx/j/b;)Lrx/k;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lrx/c/a/u$3;

    invoke-direct {v0, p0, p1}, Lrx/c/a/u$3;-><init>(Lrx/c/a/u;Lrx/j/b;)V

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 58
    iget-object v0, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    iget-object v0, p0, Lrx/c/a/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lrx/c/a/u;->d:Lrx/d/b;

    invoke-direct {p0, p1, v1}, Lrx/c/a/u;->a(Lrx/j;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d/b;->e(Lrx/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0

    .line 80
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/c/a/u;->a:Lrx/j/b;

    invoke-virtual {p0, p1, v0}, Lrx/c/a/u;->a(Lrx/j;Lrx/j/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    iget-object v0, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method a(Lrx/j;Lrx/j/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/j/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lrx/c/a/u;->a(Lrx/j/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 112
    iget-object v0, p0, Lrx/c/a/u;->d:Lrx/d/b;

    new-instance v1, Lrx/c/a/u$2;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/c/a/u$2;-><init>(Lrx/c/a/u;Lrx/j;Lrx/j;Lrx/j/b;)V

    invoke-virtual {v0, v1}, Lrx/d/b;->a(Lrx/j;)Lrx/k;

    .line 142
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/u;->a(Lrx/j;)V

    return-void
.end method
