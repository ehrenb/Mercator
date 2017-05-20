.class final Lrx/c/a/ax$c;
.super Lrx/j;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<[",
        "Lrx/d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/a/ax$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ax$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/a/ax$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ax$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lrx/c/a/ax;


# direct methods
.method public constructor <init>(Lrx/c/a/ax;Lrx/j;Lrx/c/a/ax$a;Lrx/c/a/ax$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;",
            "Lrx/c/a/ax$a",
            "<TR;>;",
            "Lrx/c/a/ax$b",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lrx/c/a/ax$c;->e:Lrx/c/a/ax;

    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 119
    iput-object p2, p0, Lrx/c/a/ax$c;->a:Lrx/j;

    .line 120
    iput-object p3, p0, Lrx/c/a/ax$c;->b:Lrx/c/a/ax$a;

    .line 121
    iput-object p4, p0, Lrx/c/a/ax$c;->c:Lrx/c/a/ax$b;

    .line 122
    return-void
.end method


# virtual methods
.method public a([Lrx/d;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lrx/c/a/ax$c;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ax$c;->d:Z

    .line 143
    iget-object v0, p0, Lrx/c/a/ax$c;->b:Lrx/c/a/ax$a;

    iget-object v1, p0, Lrx/c/a/ax$c;->c:Lrx/c/a/ax$b;

    invoke-virtual {v0, p1, v1}, Lrx/c/a/ax$a;->a([Lrx/d;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lrx/c/a/ax$c;->d:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lrx/c/a/ax$c;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 130
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lrx/c/a/ax$c;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, [Lrx/d;

    invoke-virtual {p0, p1}, Lrx/c/a/ax$c;->a([Lrx/d;)V

    return-void
.end method
