.class Lrx/c/a/u$1;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/u;->a(Lrx/j;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b",
        "<",
        "Lrx/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/c/a/u;


# direct methods
.method constructor <init>(Lrx/c/a/u;Lrx/j;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iput-object p2, p0, Lrx/c/a/u$1;->a:Lrx/j;

    iput-object p3, p0, Lrx/c/a/u$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->a:Lrx/j/b;

    invoke-virtual {v0, p1}, Lrx/j/b;->a(Lrx/k;)V

    .line 98
    iget-object v0, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iget-object v1, p0, Lrx/c/a/u$1;->a:Lrx/j;

    iget-object v2, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iget-object v2, v2, Lrx/c/a/u;->a:Lrx/j/b;

    invoke-virtual {v0, v1, v2}, Lrx/c/a/u;->a(Lrx/j;Lrx/j/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iget-object v0, v0, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v0, p0, Lrx/c/a/u$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/u$1;->c:Lrx/c/a/u;

    iget-object v1, v1, Lrx/c/a/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v1, p0, Lrx/c/a/u$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lrx/k;

    invoke-virtual {p0, p1}, Lrx/c/a/u$1;->a(Lrx/k;)V

    return-void
.end method
