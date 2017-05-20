.class public final Lrx/c/a/ao;
.super Ljava/lang/Object;
.source "OperatorSwitchIfEmpty.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ao$a;,
        Lrx/c/a/ao$b;
    }
.end annotation

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
.field private final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TT;>;"
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/c/a/ao;->a:Lrx/d;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 4
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
    new-instance v0, Lrx/j/d;

    invoke-direct {v0}, Lrx/j/d;-><init>()V

    .line 39
    new-instance v1, Lrx/c/b/a;

    invoke-direct {v1}, Lrx/c/b/a;-><init>()V

    .line 40
    new-instance v2, Lrx/c/a/ao$b;

    iget-object v3, p0, Lrx/c/a/ao;->a:Lrx/d;

    invoke-direct {v2, p1, v0, v1, v3}, Lrx/c/a/ao$b;-><init>(Lrx/j;Lrx/j/d;Lrx/c/b/a;Lrx/d;)V

    .line 41
    invoke-virtual {v0, v2}, Lrx/j/d;->a(Lrx/k;)V

    .line 42
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 43
    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 44
    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ao;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
