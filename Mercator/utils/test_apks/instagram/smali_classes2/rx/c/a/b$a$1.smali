.class Lrx/c/a/b$a$1;
.super Lrx/j;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/b$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/b$a;


# direct methods
.method constructor <init>(Lrx/c/a/b$a;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lrx/c/a/b$a$1;->a:Lrx/c/a/b$a;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lrx/c/a/b$a$1;->a:Lrx/c/a/b$a;

    invoke-virtual {v0}, Lrx/c/a/b$a;->onCompleted()V

    .line 180
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lrx/c/a/b$a$1;->a:Lrx/c/a/b$a;

    invoke-virtual {v0, p1}, Lrx/c/a/b$a;->onError(Ljava/lang/Throwable;)V

    .line 176
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
    .line 171
    iget-object v0, p0, Lrx/c/a/b$a$1;->a:Lrx/c/a/b$a;

    invoke-virtual {v0, p1}, Lrx/c/a/b$a;->onNext(Ljava/lang/Object;)V

    .line 172
    return-void
.end method
