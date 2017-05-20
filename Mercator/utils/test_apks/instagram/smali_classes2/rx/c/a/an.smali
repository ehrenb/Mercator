.class public final Lrx/c/a/an;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/g;

.field final b:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;Lrx/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TT;>;",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/c/a/an;->a:Lrx/g;

    .line 37
    iput-object p1, p0, Lrx/c/a/an;->b:Lrx/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lrx/c/a/an;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 45
    new-instance v1, Lrx/c/a/an$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/a/an$1;-><init>(Lrx/c/a/an;Lrx/j;Lrx/g$a;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/an;->a(Lrx/j;)V

    return-void
.end method
