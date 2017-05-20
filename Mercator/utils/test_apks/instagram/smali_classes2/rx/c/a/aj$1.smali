.class final Lrx/c/a/aj$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/aj;->h(Lrx/d;)Lrx/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/c/a/aj$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    :cond_0
    iget-object v0, p0, Lrx/c/a/aj$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/a/aj$b;

    .line 59
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/c/a/aj$b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :cond_1
    new-instance v1, Lrx/c/a/aj$b;

    iget-object v2, p0, Lrx/c/a/aj$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lrx/c/a/aj$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 63
    invoke-virtual {v1}, Lrx/c/a/aj$b;->a()V

    .line 65
    iget-object v2, p0, Lrx/c/a/aj$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 75
    :cond_2
    new-instance v1, Lrx/c/a/aj$a;

    invoke-direct {v1, v0, p1}, Lrx/c/a/aj$a;-><init>(Lrx/c/a/aj$b;Lrx/j;)V

    .line 80
    invoke-virtual {v0, v1}, Lrx/c/a/aj$b;->a(Lrx/c/a/aj$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 86
    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 114
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/aj$1;->a(Lrx/j;)V

    return-void
.end method
