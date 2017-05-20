.class public final Lrx/c/a/ax;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ax$a;,
        Lrx/c/a/ax$b;,
        Lrx/c/a/ax$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TR;[",
        "Lrx/d",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/i",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/f;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lrx/b/j;->a(Lrx/b/f;)Lrx/b/i;

    move-result-object v0

    iput-object v0, p0, Lrx/c/a/ax;->a:Lrx/b/i;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)",
            "Lrx/j",
            "<-[",
            "Lrx/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lrx/c/a/ax$a;

    iget-object v1, p0, Lrx/c/a/ax;->a:Lrx/b/i;

    invoke-direct {v0, p1, v1}, Lrx/c/a/ax$a;-><init>(Lrx/j;Lrx/b/i;)V

    .line 100
    new-instance v1, Lrx/c/a/ax$b;

    invoke-direct {v1, v0}, Lrx/c/a/ax$b;-><init>(Lrx/c/a/ax$a;)V

    .line 101
    new-instance v2, Lrx/c/a/ax$c;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/c/a/ax$c;-><init>(Lrx/c/a/ax;Lrx/j;Lrx/c/a/ax$a;Lrx/c/a/ax$b;)V

    .line 103
    invoke-virtual {p1, v2}, Lrx/j;->add(Lrx/k;)V

    .line 104
    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 106
    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ax;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
