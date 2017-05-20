.class public final Lrx/c/a/m;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/m$b;,
        Lrx/c/a/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method protected constructor <init>(Lrx/d;Lrx/b/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/b/e",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/c/a/m;->a:Lrx/d;

    .line 50
    iput-object p2, p0, Lrx/c/a/m;->b:Lrx/b/e;

    .line 51
    iput p3, p0, Lrx/c/a/m;->c:I

    .line 52
    return-void
.end method

.method public static a(Lrx/d;Lrx/b/e;I)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/b/e",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 71
    instance-of v0, p0, Lrx/c/e/j;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lrx/c/e/j;

    invoke-virtual {p0}, Lrx/c/e/j;->a()Ljava/lang/Object;

    move-result-object v0

    .line 73
    new-instance v1, Lrx/c/a/m$b;

    invoke-direct {v1, v0, p1}, Lrx/c/a/m$b;-><init>(Ljava/lang/Object;Lrx/b/e;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/a/m;

    invoke-direct {v0, p0, p1, p2}, Lrx/c/a/m;-><init>(Lrx/d;Lrx/b/e;I)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lrx/c/a/m$a;

    iget-object v1, p0, Lrx/c/a/m;->b:Lrx/b/e;

    iget v2, p0, Lrx/c/a/m;->c:I

    invoke-direct {v0, p1, v1, v2}, Lrx/c/a/m$a;-><init>(Lrx/j;Lrx/b/e;I)V

    .line 58
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 59
    new-instance v1, Lrx/c/a/m$1;

    invoke-direct {v1, p0, v0}, Lrx/c/a/m$1;-><init>(Lrx/c/a/m;Lrx/c/a/m$a;)V

    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 66
    iget-object v1, p0, Lrx/c/a/m;->a:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 67
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/m;->a(Lrx/j;)V

    return-void
.end method
