.class public final Lrx/c/a/ap;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-gez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput p1, p0, Lrx/c/a/ap;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lrx/c/a/ap$1;

    invoke-direct {v0, p0, p1}, Lrx/c/a/ap$1;-><init>(Lrx/c/a/ap;Lrx/j;)V

    .line 120
    iget v1, p0, Lrx/c/a/ap;->a:I

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    .line 122
    invoke-virtual {v0}, Lrx/j;->unsubscribe()V

    .line 134
    :cond_0
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 136
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ap;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
