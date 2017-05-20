.class Lrx/c/a/u$3;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/u;->a(Lrx/j/b;)Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j/b;

.field final synthetic b:Lrx/c/a/u;


# direct methods
.method constructor <init>(Lrx/c/a/u;Lrx/j/b;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iput-object p2, p0, Lrx/c/a/u$3;->a:Lrx/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->a:Lrx/j/b;

    iget-object v1, p0, Lrx/c/a/u$3;->a:Lrx/j/b;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 155
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    new-instance v1, Lrx/j/b;

    invoke-direct {v1}, Lrx/j/b;-><init>()V

    iput-object v1, v0, Lrx/c/a/u;->a:Lrx/j/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    iget-object v0, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/u$3;->b:Lrx/c/a/u;

    iget-object v1, v1, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
