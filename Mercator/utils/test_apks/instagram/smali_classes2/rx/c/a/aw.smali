.class public Lrx/c/a/aw;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

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
.field final a:Lrx/g;


# direct methods
.method public constructor <init>(Lrx/g;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/c/a/aw;->a:Lrx/g;

    .line 34
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
    .line 38
    new-instance v0, Lrx/c/a/aw$1;

    invoke-direct {v0, p0, p1}, Lrx/c/a/aw$1;-><init>(Lrx/c/a/aw;Lrx/j;)V

    .line 57
    new-instance v1, Lrx/c/a/aw$2;

    invoke-direct {v1, p0, v0}, Lrx/c/a/aw$2;-><init>(Lrx/c/a/aw;Lrx/j;)V

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 74
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/aw;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
