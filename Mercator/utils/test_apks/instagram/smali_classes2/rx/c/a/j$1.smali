.class Lrx/c/a/j$1;
.super Lrx/j;
.source "OnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/j;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TU;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/j;

.field final synthetic c:Lrx/j/d;

.field final synthetic d:Lrx/c/a/j;


# direct methods
.method constructor <init>(Lrx/c/a/j;Lrx/j;Lrx/j/d;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lrx/c/a/j$1;->d:Lrx/c/a/j;

    iput-object p2, p0, Lrx/c/a/j$1;->b:Lrx/j;

    iput-object p3, p0, Lrx/c/a/j$1;->c:Lrx/j/d;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lrx/c/a/j$1;->a:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/j$1;->a:Z

    .line 72
    iget-object v0, p0, Lrx/c/a/j$1;->c:Lrx/j/d;

    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/d;->a(Lrx/k;)V

    .line 74
    iget-object v0, p0, Lrx/c/a/j$1;->d:Lrx/c/a/j;

    iget-object v0, v0, Lrx/c/a/j;->a:Lrx/d;

    iget-object v1, p0, Lrx/c/a/j$1;->b:Lrx/j;

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/j;)Lrx/k;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lrx/c/a/j$1;->a:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/j$1;->a:Z

    .line 63
    iget-object v0, p0, Lrx/c/a/j$1;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lrx/c/a/j$1;->onCompleted()V

    .line 54
    return-void
.end method
