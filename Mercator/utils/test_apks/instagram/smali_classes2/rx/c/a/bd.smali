.class public final Lrx/c/a/bd;
.super Ljava/lang/Object;
.source "SingleOnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h;Lrx/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<+TT;>;",
            "Lrx/d",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/c/a/bd;->a:Lrx/h;

    .line 35
    iput-object p2, p0, Lrx/c/a/bd;->b:Lrx/d;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lrx/c/a/bd$1;

    invoke-direct {v0, p0, p1}, Lrx/c/a/bd$1;-><init>(Lrx/c/a/bd;Lrx/i;)V

    .line 53
    new-instance v1, Lrx/j/d;

    invoke-direct {v1}, Lrx/j/d;-><init>()V

    .line 54
    invoke-virtual {p1, v1}, Lrx/i;->b(Lrx/k;)V

    .line 56
    new-instance v2, Lrx/c/a/bd$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/c/a/bd$2;-><init>(Lrx/c/a/bd;Lrx/i;Lrx/j/d;)V

    .line 85
    invoke-virtual {v1, v2}, Lrx/j/d;->a(Lrx/k;)V

    .line 87
    iget-object v0, p0, Lrx/c/a/bd;->b:Lrx/d;

    invoke-virtual {v0, v2}, Lrx/d;->b(Lrx/j;)Lrx/k;

    .line 88
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/a/bd;->a(Lrx/i;)V

    return-void
.end method
