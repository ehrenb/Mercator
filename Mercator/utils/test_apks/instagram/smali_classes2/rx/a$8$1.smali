.class Lrx/a$8$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$8;->a(Lrx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lrx/j/b;

.field final synthetic c:Lrx/b;

.field final synthetic d:Lrx/a$8;


# direct methods
.method constructor <init>(Lrx/a$8;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/j/b;Lrx/b;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lrx/a$8$1;->d:Lrx/a$8;

    iput-object p2, p0, Lrx/a$8$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/a$8$1;->b:Lrx/j/b;

    iput-object p4, p0, Lrx/a$8$1;->c:Lrx/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lrx/a$8$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lrx/a$8$1;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 115
    iget-object v0, p0, Lrx/a$8$1;->c:Lrx/b;

    invoke-interface {v0}, Lrx/b;->a()V

    .line 117
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lrx/a$8$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lrx/a$8$1;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 123
    iget-object v0, p0, Lrx/a$8$1;->c:Lrx/b;

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Throwable;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lrx/k;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lrx/a$8$1;->b:Lrx/j/b;

    invoke-virtual {v0, p1}, Lrx/j/b;->a(Lrx/k;)V

    .line 132
    return-void
.end method
