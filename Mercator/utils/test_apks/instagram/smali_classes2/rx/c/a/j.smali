.class public final Lrx/c/a/j;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
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

.field final b:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;Lrx/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/c/a/j;->a:Lrx/d;

    .line 37
    iput-object p2, p0, Lrx/c/a/j;->b:Lrx/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lrx/j/d;

    invoke-direct {v0}, Lrx/j/d;-><init>()V

    .line 44
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 46
    invoke-static {p1}, Lrx/e/f;->a(Lrx/j;)Lrx/j;

    move-result-object v1

    .line 49
    new-instance v2, Lrx/c/a/j$1;

    invoke-direct {v2, p0, v1, v0}, Lrx/c/a/j$1;-><init>(Lrx/c/a/j;Lrx/j;Lrx/j/d;)V

    .line 78
    invoke-virtual {v0, v2}, Lrx/j/d;->a(Lrx/k;)V

    .line 80
    iget-object v0, p0, Lrx/c/a/j;->b:Lrx/d;

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 81
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/j;->a(Lrx/j;)V

    return-void
.end method
