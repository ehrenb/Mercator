.class final Lrx/c/a/ao$a;
.super Lrx/j;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/c/b/a;

.field private final b:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/j;Lrx/c/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/c/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/c/a/ao$a;->b:Lrx/j;

    .line 102
    iput-object p2, p0, Lrx/c/a/ao$a;->a:Lrx/c/b/a;

    .line 103
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lrx/c/a/ao$a;->b:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lrx/c/a/ao$a;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lrx/c/a/ao$a;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lrx/c/a/ao$a;->a:Lrx/c/b/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/c/b/a;->a(J)V

    .line 124
    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lrx/c/a/ao$a;->a:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 108
    return-void
.end method
