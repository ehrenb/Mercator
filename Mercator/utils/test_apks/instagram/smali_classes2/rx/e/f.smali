.class public final Lrx/e/f;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method public static a()Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lrx/e/a;->a()Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e/f;->a(Lrx/e;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/e/f$1;

    invoke-direct {v0, p0}, Lrx/e/f$1;-><init>(Lrx/e;)V

    return-object v0
.end method

.method public static a(Lrx/j;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lrx/e/f$2;

    invoke-direct {v0, p0, p0}, Lrx/e/f$2;-><init>(Lrx/j;Lrx/j;)V

    return-object v0
.end method
