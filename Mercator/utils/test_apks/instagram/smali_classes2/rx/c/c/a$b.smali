.class final Lrx/c/c/a$b;
.super Lrx/g$a;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lrx/j/b;

.field private final c:Lrx/c/c/a$a;

.field private final d:Lrx/c/c/a$c;


# direct methods
.method constructor <init>(Lrx/c/c/a$a;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lrx/g$a;-><init>()V

    .line 180
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    .line 186
    iput-object p1, p0, Lrx/c/c/a$b;->c:Lrx/c/c/a$a;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/c/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    invoke-virtual {p1}, Lrx/c/c/a$a;->a()Lrx/c/c/a$c;

    move-result-object v0

    iput-object v0, p0, Lrx/c/c/a$b;->d:Lrx/c/c/a$c;

    .line 189
    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 3

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/c/c/a$b;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lrx/c/c/a$b;->d:Lrx/c/c/a$c;

    new-instance v1, Lrx/c/c/a$b$1;

    invoke-direct {v1, p0, p1}, Lrx/c/c/a$b$1;-><init>(Lrx/c/c/a$b;Lrx/b/a;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lrx/c/c/a$c;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/c/c/g;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 234
    iget-object v1, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    invoke-virtual {v0, v1}, Lrx/c/c/g;->a(Lrx/j/b;)V

    goto :goto_0
.end method

.method public call()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lrx/c/c/a$b;->c:Lrx/c/c/a$a;

    iget-object v1, p0, Lrx/c/c/a$b;->d:Lrx/c/c/a$c;

    invoke-virtual {v0, v1}, Lrx/c/c/a$a;->a(Lrx/c/c/a$c;)V

    .line 205
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lrx/c/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lrx/c/c/a$b;->d:Lrx/c/c/a$c;

    invoke-virtual {v0, p0}, Lrx/c/c/a$c;->a(Lrx/b/a;)Lrx/k;

    .line 199
    :cond_0
    iget-object v0, p0, Lrx/c/c/a$b;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 200
    return-void
.end method
