.class final Lrx/c/a/g$a;
.super Lrx/j;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/g$b",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method public constructor <init>(Lrx/c/a/g$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/g$b",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 365
    iput-object p1, p0, Lrx/c/a/g$a;->a:Lrx/c/a/g$b;

    .line 366
    iput p2, p0, Lrx/c/a/g$a;->b:I

    .line 367
    iget v0, p1, Lrx/c/a/g$b;->d:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/g$a;->request(J)V

    .line 368
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0, p1, p2}, Lrx/c/a/g$a;->request(J)V

    .line 400
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 391
    iget-boolean v0, p0, Lrx/c/a/g$a;->c:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/g$a;->c:Z

    .line 395
    iget-object v0, p0, Lrx/c/a/g$a;->a:Lrx/c/a/g$b;

    const/4 v1, 0x0

    iget v2, p0, Lrx/c/a/g$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/c/a/g$b;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lrx/c/a/g$a;->c:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lrx/c/a/g$a;->a:Lrx/c/a/g$b;

    invoke-virtual {v0, p1}, Lrx/c/a/g$b;->a(Ljava/lang/Throwable;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/g$a;->c:Z

    .line 386
    iget-object v0, p0, Lrx/c/a/g$a;->a:Lrx/c/a/g$b;

    const/4 v1, 0x0

    iget v2, p0, Lrx/c/a/g$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/c/a/g$b;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    iget-boolean v0, p0, Lrx/c/a/g$a;->c:Z

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lrx/c/a/g$a;->a:Lrx/c/a/g$b;

    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lrx/c/a/g$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/c/a/g$b;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method
