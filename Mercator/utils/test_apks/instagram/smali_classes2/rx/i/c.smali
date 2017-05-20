.class public abstract Lrx/i/c;
.super Lrx/d;
.source "Subject.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d",
        "<TR;>;",
        "Lrx/e",
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
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lrx/d;-><init>(Lrx/d$a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final q()Lrx/i/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/i/b",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/i/b;

    if-ne v0, v1, :cond_0

    .line 56
    check-cast p0, Lrx/i/b;

    .line 58
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lrx/i/b;

    invoke-direct {v0, p0}, Lrx/i/b;-><init>(Lrx/i/c;)V

    move-object p0, v0

    goto :goto_0
.end method
