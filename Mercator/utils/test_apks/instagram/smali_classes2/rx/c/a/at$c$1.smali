.class Lrx/c/a/at$c$1;
.super Lrx/j;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/at$c;->a(J)V
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
.field final synthetic a:Lrx/c/a/at$c;


# direct methods
.method constructor <init>(Lrx/c/a/at$c;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lrx/c/a/at$c$1;->a:Lrx/c/a/at$c;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lrx/c/a/at$c$1;->a:Lrx/c/a/at$c;

    iget-object v0, v0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v0}, Lrx/e/e;->onCompleted()V

    .line 193
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lrx/c/a/at$c$1;->a:Lrx/c/a/at$c;

    iget-object v0, v0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v0, p1}, Lrx/e/e;->onError(Ljava/lang/Throwable;)V

    .line 188
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
    .line 182
    iget-object v0, p0, Lrx/c/a/at$c$1;->a:Lrx/c/a/at$c;

    iget-object v0, v0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v0, p1}, Lrx/e/e;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lrx/c/a/at$c$1;->a:Lrx/c/a/at$c;

    iget-object v0, v0, Lrx/c/a/at$c;->f:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 198
    return-void
.end method
