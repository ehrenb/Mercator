.class Lrx/c/a/aq$1;
.super Lrx/j;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/aq;->a(Lrx/j;)Lrx/j;
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

.field final synthetic b:Lrx/c/a/aq;


# direct methods
.method constructor <init>(Lrx/c/a/aq;Lrx/j;ZLrx/j;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lrx/c/a/aq$1;->b:Lrx/c/a/aq;

    iput-object p4, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-direct {p0, p2, p3}, Lrx/j;-><init>(Lrx/j;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->unsubscribe()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v1}, Lrx/j;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->unsubscribe()V

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v1}, Lrx/j;->unsubscribe()V

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
    .line 45
    iget-object v0, p0, Lrx/c/a/aq$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
