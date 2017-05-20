.class public final Lrx/c/c/a;
.super Lrx/g;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/c/c/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/c/a$c;,
        Lrx/c/c/a$b;,
        Lrx/c/c/a$a;
    }
.end annotation


# static fields
.field static final a:Lrx/c/c/a$c;

.field static final b:Lrx/c/c/a$a;

.field private static final e:J

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final c:Ljava/util/concurrent/ThreadFactory;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/c/c/a;->f:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Lrx/c/c/a$c;

    sget-object v1, Lrx/c/e/i;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/c/c/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/c/c/a;->a:Lrx/c/c/a$c;

    .line 40
    sget-object v0, Lrx/c/c/a;->a:Lrx/c/c/a$c;

    invoke-virtual {v0}, Lrx/c/c/a$c;->unsubscribe()V

    .line 42
    new-instance v0, Lrx/c/c/a$a;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lrx/c/c/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    .line 43
    sget-object v0, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    invoke-virtual {v0}, Lrx/c/c/a$a;->d()V

    .line 45
    const-string v0, "rx.io-scheduler.keepalive"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lrx/c/c/a;->e:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 147
    iput-object p1, p0, Lrx/c/c/a;->c:Ljava/util/concurrent/ThreadFactory;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    invoke-virtual {p0}, Lrx/c/c/a;->c()V

    .line 150
    return-void
.end method


# virtual methods
.method public a()Lrx/g$a;
    .locals 2

    .prologue
    .line 176
    new-instance v1, Lrx/c/c/a$b;

    iget-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/a$a;

    invoke-direct {v1, v0}, Lrx/c/c/a$b;-><init>(Lrx/c/c/a$a;)V

    return-object v1
.end method

.method public c()V
    .locals 5

    .prologue
    .line 154
    new-instance v0, Lrx/c/c/a$a;

    iget-object v1, p0, Lrx/c/c/a;->c:Ljava/util/concurrent/ThreadFactory;

    sget-wide v2, Lrx/c/c/a;->e:J

    sget-object v4, Lrx/c/c/a;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/c/c/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 156
    iget-object v1, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lrx/c/c/a$a;->d()V

    .line 159
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 163
    :cond_0
    iget-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/a$a;

    .line 164
    sget-object v1, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    if-ne v0, v1, :cond_1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/a;->b:Lrx/c/c/a$a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lrx/c/c/a$a;->d()V

    goto :goto_0
.end method
