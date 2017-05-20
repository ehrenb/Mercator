.class Lrx/c/a/t$2;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/t;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/i/c;

.field final synthetic c:Lrx/c/b/a;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic e:Lrx/j/d;

.field final synthetic f:Lrx/c/a/t;


# direct methods
.method constructor <init>(Lrx/c/a/t;Lrx/j;Lrx/i/c;Lrx/c/b/a;Ljava/util/concurrent/atomic/AtomicLong;Lrx/j/d;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lrx/c/a/t$2;->f:Lrx/c/a/t;

    iput-object p2, p0, Lrx/c/a/t$2;->a:Lrx/j;

    iput-object p3, p0, Lrx/c/a/t$2;->b:Lrx/i/c;

    iput-object p4, p0, Lrx/c/a/t$2;->c:Lrx/c/b/a;

    iput-object p5, p0, Lrx/c/a/t$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/c/a/t$2;->e:Lrx/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lrx/c/a/t$2;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lrx/c/a/t$2$1;

    invoke-direct {v0, p0}, Lrx/c/a/t$2$1;-><init>(Lrx/c/a/t$2;)V

    .line 272
    iget-object v1, p0, Lrx/c/a/t$2;->e:Lrx/j/d;

    invoke-virtual {v1, v0}, Lrx/j/d;->a(Lrx/k;)V

    .line 273
    iget-object v1, p0, Lrx/c/a/t$2;->f:Lrx/c/a/t;

    iget-object v1, v1, Lrx/c/a/t;->a:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    goto :goto_0
.end method
