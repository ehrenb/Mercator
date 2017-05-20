.class final Lrx/i/d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/i/d$b;,
        Lrx/i/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/i/d$a",
        "<TT;>;>;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/Object;

.field b:Z

.field c:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Lrx/i/d$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Lrx/i/d$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Lrx/i/d$b",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lrx/i/d$a;->e:Lrx/i/d$a;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/d;->b:Z

    .line 44
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lrx/i/d;->c:Lrx/b/b;

    .line 46
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lrx/i/d;->d:Lrx/b/b;

    .line 48
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lrx/i/d;->e:Lrx/b/b;

    .line 52
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lrx/i/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/i/d;->a:Ljava/lang/Object;

    .line 77
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
    .line 56
    new-instance v0, Lrx/i/d$b;

    invoke-direct {v0, p1}, Lrx/i/d$b;-><init>(Lrx/j;)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lrx/i/d;->a(Lrx/j;Lrx/i/d$b;)V

    .line 58
    iget-object v1, p0, Lrx/i/d;->c:Lrx/b/b;

    invoke-interface {v1, v0}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lrx/i/d;->a(Lrx/i/d$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lrx/i/d;->b(Lrx/i/d$b;)V

    .line 64
    :cond_0
    return-void
.end method

.method a(Lrx/j;Lrx/i/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/i/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lrx/i/d$1;

    invoke-direct {v0, p0, p2}, Lrx/i/d$1;-><init>(Lrx/i/d;Lrx/i/d$b;)V

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 73
    return-void
.end method

.method a(Lrx/i/d$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/d$b",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    invoke-virtual {p0}, Lrx/i/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$a;

    .line 94
    iget-boolean v1, v0, Lrx/i/d$a;->a:Z

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p0, Lrx/i/d;->e:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_1
    invoke-virtual {v0, p1}, Lrx/i/d$a;->a(Lrx/i/d$b;)Lrx/i/d$a;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lrx/i/d;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lrx/i/d;->d:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Lrx/i/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    :cond_0
    invoke-virtual {p0}, Lrx/i/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$a;

    .line 112
    iget-boolean v1, v0, Lrx/i/d$a;->a:Z

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    invoke-virtual {v0, p1}, Lrx/i/d$a;->b(Lrx/i/d$b;)Lrx/i/d$a;

    move-result-object v1

    .line 116
    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0, v1}, Lrx/i/d;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)[Lrx/i/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/i/d$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lrx/i/d;->a(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lrx/i/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$a;

    iget-object v0, v0, Lrx/i/d$a;->b:[Lrx/i/d$b;

    return-object v0
.end method

.method c(Ljava/lang/Object;)[Lrx/i/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/i/d$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lrx/i/d;->a(Ljava/lang/Object;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/i/d;->b:Z

    .line 140
    invoke-virtual {p0}, Lrx/i/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$a;

    .line 141
    iget-boolean v0, v0, Lrx/i/d$a;->a:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lrx/i/d$a;->c:[Lrx/i/d$b;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/i/d$a;->d:Lrx/i/d$a;

    invoke-virtual {p0, v0}, Lrx/i/d;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/d$a;

    iget-object v0, v0, Lrx/i/d$a;->b:[Lrx/i/d$b;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/i/d;->a(Lrx/j;)V

    return-void
.end method
