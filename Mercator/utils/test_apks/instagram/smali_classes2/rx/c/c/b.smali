.class public final Lrx/c/c/b;
.super Lrx/g;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/c/c/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/c/b$c;,
        Lrx/c/c/b$a;,
        Lrx/c/c/b$b;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:Lrx/c/c/b$c;

.field static final c:Lrx/c/c/b$b;


# instance fields
.field final d:Ljava/util/concurrent/ThreadFactory;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/c/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 38
    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 43
    :cond_1
    sput v0, Lrx/c/c/b;->a:I

    .line 48
    new-instance v0, Lrx/c/c/b$c;

    sget-object v1, Lrx/c/e/i;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/c/c/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/c/c/b;->b:Lrx/c/c/b$c;

    .line 49
    sget-object v0, Lrx/c/c/b;->b:Lrx/c/c/b$c;

    invoke-virtual {v0}, Lrx/c/c/b$c;->unsubscribe()V

    .line 53
    new-instance v0, Lrx/c/c/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lrx/c/c/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lrx/c/c/b;->c:Lrx/c/c/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 96
    iput-object p1, p0, Lrx/c/c/b;->d:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/b;->c:Lrx/c/c/b$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    invoke-virtual {p0}, Lrx/c/c/b;->c()V

    .line 99
    return-void
.end method


# virtual methods
.method public a()Lrx/g$a;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lrx/c/c/b$a;

    iget-object v0, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/b$b;

    invoke-virtual {v0}, Lrx/c/c/b$b;->a()Lrx/c/c/b$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/c/c/b$a;-><init>(Lrx/c/c/b$c;)V

    return-object v1
.end method

.method public a(Lrx/b/a;)Lrx/k;
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/b$b;

    invoke-virtual {v0}, Lrx/c/c/b$b;->a()Lrx/c/c/b$c;

    move-result-object v0

    .line 136
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/c/c/b$c;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/c/c/g;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lrx/c/c/b$b;

    iget-object v1, p0, Lrx/c/c/b;->d:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/c/c/b;->a:I

    invoke-direct {v0, v1, v2}, Lrx/c/c/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 109
    iget-object v1, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/b;->c:Lrx/c/c/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lrx/c/c/b$b;->b()V

    .line 112
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 117
    :cond_0
    iget-object v0, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/b$b;

    .line 118
    sget-object v1, Lrx/c/c/b;->c:Lrx/c/c/b$b;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lrx/c/c/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/b;->c:Lrx/c/c/b$b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lrx/c/c/b$b;->b()V

    goto :goto_0
.end method
