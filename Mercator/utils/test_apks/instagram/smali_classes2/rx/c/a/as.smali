.class public final Lrx/c/a/as;
.super Lrx/c/a/at;
.source "OperatorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/a/at",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/d;Lrx/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lrx/c/a/as$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/c/a/as$1;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/c/a/as$2;

    invoke-direct {v1, p1, p2, p3}, Lrx/c/a/as$2;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lrx/c/a/at;-><init>(Lrx/c/a/at$a;Lrx/c/a/at$b;Lrx/d;Lrx/g;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lrx/j;)Lrx/j;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Lrx/c/a/at;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
