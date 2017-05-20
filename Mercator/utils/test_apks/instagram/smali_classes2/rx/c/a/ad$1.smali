.class Lrx/c/a/ad$1;
.super Lrx/j;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ad;->a(Lrx/j;)Lrx/j;
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
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lrx/j;

.field final synthetic d:Lrx/c/a/ad;


# direct methods
.method constructor <init>(Lrx/c/a/ad;Lrx/j;Lrx/j;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lrx/c/a/ad$1;->d:Lrx/c/a/ad;

    iput-object p3, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-direct {p0, p2}, Lrx/j;-><init>(Lrx/j;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ad$1;->d:Lrx/c/a/ad;

    iget-object v0, v0, Lrx/c/a/ad;->a:Lrx/b/e;

    invoke-interface {v0, p1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    iget-object v0, p0, Lrx/c/a/ad$1;->a:Ljava/lang/Object;

    .line 83
    iput-object v1, p0, Lrx/c/a/ad$1;->a:Ljava/lang/Object;

    .line 85
    iget-boolean v2, p0, Lrx/c/a/ad$1;->b:Z

    if-eqz v2, :cond_1

    .line 89
    :try_start_1
    iget-object v2, p0, Lrx/c/a/ad$1;->d:Lrx/c/a/ad;

    iget-object v2, v2, Lrx/c/a/ad;->b:Lrx/b/f;

    invoke-interface {v2, v0, v1}, Lrx/b/f;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-static {v0, v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    iget-object v2, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-static {v0, v2, v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/a/ad$1;->request(J)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ad$1;->b:Z

    .line 102
    iget-object v0, p0, Lrx/c/a/ad$1;->c:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
