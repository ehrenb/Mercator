.class public Lrx/i/b;
.super Lrx/i/c;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i/c",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/c",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lrx/i/b$1;

    invoke-direct {v0, p1}, Lrx/i/b$1;-><init>(Lrx/i/c;)V

    invoke-direct {p0, v0}, Lrx/i/c;-><init>(Lrx/d$a;)V

    .line 51
    iput-object p1, p0, Lrx/i/b;->c:Lrx/i/c;

    .line 52
    new-instance v0, Lrx/e/d;

    invoke-direct {v0, p1}, Lrx/e/d;-><init>(Lrx/e;)V

    iput-object v0, p0, Lrx/i/b;->b:Lrx/e/d;

    .line 53
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lrx/i/b;->b:Lrx/e/d;

    invoke-virtual {v0}, Lrx/e/d;->onCompleted()V

    .line 58
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lrx/i/b;->b:Lrx/e/d;

    invoke-virtual {v0, p1}, Lrx/e/d;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lrx/i/b;->b:Lrx/e/d;

    invoke-virtual {v0, p1}, Lrx/e/d;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
