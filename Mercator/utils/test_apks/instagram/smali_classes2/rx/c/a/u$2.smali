.class Lrx/c/a/u$2;
.super Lrx/j;
.source "OnSubscribeRefCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/u;->a(Lrx/j;Lrx/j/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/j/b;

.field final synthetic c:Lrx/c/a/u;


# direct methods
.method constructor <init>(Lrx/c/a/u;Lrx/j;Lrx/j;Lrx/j/b;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iput-object p3, p0, Lrx/c/a/u$2;->a:Lrx/j;

    iput-object p4, p0, Lrx/c/a/u$2;->b:Lrx/j/b;

    invoke-direct {p0, p2}, Lrx/j;-><init>(Lrx/j;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->a:Lrx/j/b;

    iget-object v1, p0, Lrx/c/a/u$2;->b:Lrx/j/b;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 134
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    new-instance v1, Lrx/j/b;

    invoke-direct {v1}, Lrx/j/b;-><init>()V

    iput-object v1, v0, Lrx/c/a/u;->a:Lrx/j/b;

    .line 135
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-object v0, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/u$2;->c:Lrx/c/a/u;

    iget-object v1, v1, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lrx/c/a/u$2;->a()V

    .line 125
    iget-object v0, p0, Lrx/c/a/u$2;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lrx/c/a/u$2;->a()V

    .line 116
    iget-object v0, p0, Lrx/c/a/u$2;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lrx/c/a/u$2;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
