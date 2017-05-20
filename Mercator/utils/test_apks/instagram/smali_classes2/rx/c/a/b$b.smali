.class final Lrx/c/a/b$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CachedObservable.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/b;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/b$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/b$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 235
    iput-object p1, p0, Lrx/c/a/b$b;->a:Lrx/c/a/b$a;

    .line 236
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lrx/c/a/b$c;

    iget-object v1, p0, Lrx/c/a/b$b;->a:Lrx/c/a/b$a;

    invoke-direct {v0, p1, v1}, Lrx/c/a/b$c;-><init>(Lrx/j;Lrx/c/a/b$a;)V

    .line 241
    iget-object v1, p0, Lrx/c/a/b$b;->a:Lrx/c/a/b$a;

    invoke-virtual {v1, v0}, Lrx/c/a/b$a;->a(Lrx/c/a/b$c;)V

    .line 243
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 244
    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 247
    invoke-virtual {p0}, Lrx/c/a/b$b;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/a/b$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lrx/c/a/b$b;->a:Lrx/c/a/b$a;

    invoke-virtual {v0}, Lrx/c/a/b$a;->a()V

    .line 252
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/b$b;->a(Lrx/j;)V

    return-void
.end method
