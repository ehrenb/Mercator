.class public final Lrx/c/a/aq;
.super Ljava/lang/Object;
.source "OperatorTakeUntil.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/c/a/aq;->a:Lrx/d;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 3
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
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lrx/e/e;

    invoke-direct {v0, p1, v2}, Lrx/e/e;-><init>(Lrx/j;Z)V

    .line 42
    new-instance v1, Lrx/c/a/aq$1;

    invoke-direct {v1, p0, v0, v2, v0}, Lrx/c/a/aq$1;-><init>(Lrx/c/a/aq;Lrx/j;ZLrx/j;)V

    .line 65
    new-instance v2, Lrx/c/a/aq$2;

    invoke-direct {v2, p0, v1}, Lrx/c/a/aq$2;-><init>(Lrx/c/a/aq;Lrx/j;)V

    .line 88
    invoke-virtual {v0, v1}, Lrx/j;->add(Lrx/k;)V

    .line 89
    invoke-virtual {v0, v2}, Lrx/j;->add(Lrx/k;)V

    .line 91
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 93
    iget-object v0, p0, Lrx/c/a/aq;->a:Lrx/d;

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 95
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/aq;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
