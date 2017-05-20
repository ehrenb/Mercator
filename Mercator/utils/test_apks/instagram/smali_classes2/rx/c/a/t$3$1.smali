.class Lrx/c/a/t$3$1;
.super Lrx/j;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/t$3;->a(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<",
        "Lrx/c",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/c/a/t$3;


# direct methods
.method constructor <init>(Lrx/c/a/t$3;Lrx/j;Lrx/j;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lrx/c/a/t$3$1;->b:Lrx/c/a/t$3;

    iput-object p3, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-direct {p0, p2}, Lrx/j;-><init>(Lrx/j;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p1}, Lrx/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/c/a/t$3$1;->b:Lrx/c/a/t$3;

    iget-object v0, v0, Lrx/c/a/t$3;->a:Lrx/c/a/t;

    iget-boolean v0, v0, Lrx/c/a/t;->b:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lrx/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/c/a/t$3$1;->b:Lrx/c/a/t$3;

    iget-object v0, v0, Lrx/c/a/t$3;->a:Lrx/c/a/t;

    iget-boolean v0, v0, Lrx/c/a/t;->c:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-virtual {p1}, Lrx/c;->b()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lrx/c/a/t$3$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Lrx/c;

    invoke-virtual {p0, p1}, Lrx/c/a/t$3$1;->a(Lrx/c;)V

    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 2

    .prologue
    .line 308
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/f;->request(J)V

    .line 309
    return-void
.end method
