.class Lrx/c/a/ai$3$1;
.super Lrx/j;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ai$3;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic a:Lrx/c/a/ai$3;


# direct methods
.method constructor <init>(Lrx/c/a/ai$3;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lrx/c/a/ai$3$1;->a:Lrx/c/a/ai$3;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lrx/c/a/ai$3$1;->a:Lrx/c/a/ai$3;

    iget-object v0, v0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lrx/c/a/ai$3$1;->a:Lrx/c/a/ai$3;

    iget-object v0, v0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 123
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
    .line 118
    iget-object v0, p0, Lrx/c/a/ai$3$1;->a:Lrx/c/a/ai$3;

    iget-object v0, v0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lrx/c/a/ai$3$1;->a:Lrx/c/a/ai$3;

    iget-object v0, v0, Lrx/c/a/ai$3;->c:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 131
    return-void
.end method
