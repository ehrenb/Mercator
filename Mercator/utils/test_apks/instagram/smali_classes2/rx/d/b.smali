.class public abstract Lrx/d/b;
.super Lrx/d;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lrx/d;-><init>(Lrx/d$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lrx/k;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/k;

    .line 52
    new-instance v1, Lrx/d/b$1;

    invoke-direct {v1, p0, v0}, Lrx/d/b$1;-><init>(Lrx/d/b;[Lrx/k;)V

    invoke-virtual {p0, v1}, Lrx/d/b;->e(Lrx/b/b;)V

    .line 58
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract e(Lrx/b/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-",
            "Lrx/k;",
            ">;)V"
        }
    .end annotation
.end method

.method public q()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lrx/c/a/u;

    invoke-direct {v0, p0}, Lrx/c/a/u;-><init>(Lrx/d/b;)V

    invoke-static {v0}, Lrx/d/b;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
