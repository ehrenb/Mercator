.class final Lrx/c/a/ao$b;
.super Lrx/j;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field private a:Z

.field private final b:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/j/d;

.field private final d:Lrx/c/b/a;

.field private final e:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/j;Lrx/j/d;Lrx/c/b/a;Lrx/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/j/d;",
            "Lrx/c/b/a;",
            "Lrx/d",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ao$b;->a:Z

    .line 56
    iput-object p1, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    .line 57
    iput-object p2, p0, Lrx/c/a/ao$b;->c:Lrx/j/d;

    .line 58
    iput-object p3, p0, Lrx/c/a/ao$b;->d:Lrx/c/b/a;

    .line 59
    iput-object p4, p0, Lrx/c/a/ao$b;->e:Lrx/d;

    .line 60
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lrx/c/a/ao$a;

    iget-object v1, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    iget-object v2, p0, Lrx/c/a/ao$b;->d:Lrx/c/b/a;

    invoke-direct {v0, v1, v2}, Lrx/c/a/ao$a;-><init>(Lrx/j;Lrx/c/b/a;)V

    .line 78
    iget-object v1, p0, Lrx/c/a/ao$b;->c:Lrx/j/d;

    invoke-virtual {v1, v0}, Lrx/j/d;->a(Lrx/k;)V

    .line 79
    iget-object v1, p0, Lrx/c/a/ao$b;->e:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 80
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lrx/c/a/ao$b;->a:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lrx/c/a/ao$b;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/ao$b;->a:Z

    .line 90
    iget-object v0, p0, Lrx/c/a/ao$b;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lrx/c/a/ao$b;->d:Lrx/c/b/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/c/b/a;->a(J)V

    .line 92
    return-void
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/c/a/ao$b;->d:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 65
    return-void
.end method
