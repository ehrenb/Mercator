.class Lrx/c/a/an$1$1;
.super Lrx/j;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/an$1;->call()V
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
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/c/a/an$1;


# direct methods
.method constructor <init>(Lrx/c/a/an$1;Lrx/j;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iput-object p3, p0, Lrx/c/a/an$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/j;-><init>(Lrx/j;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v1, v1, Lrx/c/a/an$1;->b:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v1, v1, Lrx/c/a/an$1;->b:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->a:Lrx/j;

    new-instance v1, Lrx/c/a/an$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/c/a/an$1$1$1;-><init>(Lrx/c/a/an$1$1;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 91
    return-void
.end method
