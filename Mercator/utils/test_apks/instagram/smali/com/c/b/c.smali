.class final Lcom/c/b/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "RelaySubscriptionManager.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/b/c$a;,
        Lcom/c/b/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lcom/c/b/c$b",
        "<TT;>;>;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Lcom/c/b/c$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field c:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Lcom/c/b/c$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/c/b/c$b;->a:Lcom/c/b/c$b;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/c;->a:Z

    .line 43
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c;->b:Lrx/b/b;

    .line 45
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c;->c:Lrx/b/b;

    .line 49
    return-void
.end method

.method private a(Lrx/j;Lcom/c/b/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lcom/c/b/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/c/b/c$1;

    invoke-direct {v0, p0, p2}, Lcom/c/b/c$1;-><init>(Lcom/c/b/c;Lcom/c/b/c$a;)V

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 70
    return-void
.end method

.method private b(Lcom/c/b/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c$b;

    .line 95
    invoke-virtual {v0, p1}, Lcom/c/b/c$b;->a(Lcom/c/b/c$a;)Lcom/c/b/c$b;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/c/b/c;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/c/b/c;->c:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 101
    return-void
.end method


# virtual methods
.method a(Lcom/c/b/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c$b;

    .line 111
    invoke-virtual {v0, p1}, Lcom/c/b/c$b;->b(Lcom/c/b/c$a;)Lcom/c/b/c$b;

    move-result-object v1

    .line 112
    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/c/b/c;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :cond_1
    return-void
.end method

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
    .line 52
    new-instance v0, Lcom/c/b/c$a;

    invoke-direct {v0, p1}, Lcom/c/b/c$a;-><init>(Lrx/e;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/c/b/c;->a(Lrx/j;Lcom/c/b/c$a;)V

    .line 54
    iget-object v1, p0, Lcom/c/b/c;->b:Lrx/b/b;

    invoke-interface {v1, v0}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lcom/c/b/c;->b(Lcom/c/b/c$a;)V

    .line 57
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/c/b/c;->a(Lcom/c/b/c$a;)V

    .line 61
    :cond_0
    return-void
.end method

.method a()[Lcom/c/b/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/c/b/c$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/c/b/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c$b;

    iget-object v0, v0, Lcom/c/b/c$b;->b:[Lcom/c/b/c$a;

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcom/c/b/c;->a(Lrx/j;)V

    return-void
.end method
