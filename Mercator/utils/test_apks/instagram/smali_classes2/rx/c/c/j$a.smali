.class final Lrx/c/c/j$a;
.super Lrx/g$a;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/c/c/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/j/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lrx/g$a;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/c/c/j$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/c/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lrx/j/a;

    invoke-direct {v0}, Lrx/j/a;-><init>()V

    iput-object v0, p0, Lrx/c/c/j$a;->c:Lrx/j/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/c/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Lrx/b/a;J)Lrx/k;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lrx/c/c/j$a;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lrx/c/c/j$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lrx/c/c/j$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lrx/c/c/j$b;-><init>(Lrx/b/a;Ljava/lang/Long;I)V

    .line 67
    iget-object v1, p0, Lrx/c/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lrx/c/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    .line 71
    :cond_1
    iget-object v0, p0, Lrx/c/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/j$b;

    .line 72
    if-eqz v0, :cond_2

    .line 73
    iget-object v0, v0, Lrx/c/c/j$b;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 75
    :cond_2
    iget-object v0, p0, Lrx/c/c/j$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 76
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    new-instance v1, Lrx/c/c/j$a$1;

    invoke-direct {v1, p0, v0}, Lrx/c/c/j$a$1;-><init>(Lrx/c/c/j$a;Lrx/c/c/j$b;)V

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lrx/c/c/j$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/c/c/j$a;->a(Lrx/b/a;J)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lrx/c/c/j$a;->a()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 59
    new-instance v2, Lrx/c/c/i;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/c/c/i;-><init>(Lrx/b/a;Lrx/g$a;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/c/c/j$a;->a(Lrx/b/a;J)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lrx/c/c/j$a;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lrx/c/c/j$a;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->unsubscribe()V

    .line 93
    return-void
.end method
