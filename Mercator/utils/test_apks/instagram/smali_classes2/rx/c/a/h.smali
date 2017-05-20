.class public final Lrx/c/a/h;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/h$a;,
        Lrx/c/a/h$b;,
        Lrx/c/a/h$c;
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
            "Lrx/d",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Lrx/d;Lrx/b/e;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/d",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/c/a/h;->a:Lrx/d;

    .line 67
    iput-object p2, p0, Lrx/c/a/h;->b:Lrx/b/e;

    .line 68
    iput p3, p0, Lrx/c/a/h;->c:I

    .line 69
    iput p4, p0, Lrx/c/a/h;->d:I

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lrx/c/a/h;->d:I

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lrx/e/e;

    invoke-direct {v0, p1}, Lrx/e/e;-><init>(Lrx/j;)V

    .line 82
    :goto_0
    new-instance v1, Lrx/c/a/h$c;

    iget-object v2, p0, Lrx/c/a/h;->b:Lrx/b/e;

    iget v3, p0, Lrx/c/a/h;->c:I

    iget v4, p0, Lrx/c/a/h;->d:I

    invoke-direct {v1, v0, v2, v3, v4}, Lrx/c/a/h$c;-><init>(Lrx/j;Lrx/b/e;II)V

    .line 84
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 85
    iget-object v0, v1, Lrx/c/a/h$c;->h:Lrx/j/d;

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 86
    new-instance v0, Lrx/c/a/h$1;

    invoke-direct {v0, p0, v1}, Lrx/c/a/h$1;-><init>(Lrx/c/a/h;Lrx/c/a/h$c;)V

    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 93
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lrx/c/a/h;->a:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 96
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 79
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/h;->a(Lrx/j;)V

    return-void
.end method
