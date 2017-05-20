.class Lrx/c/a/aj$b$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/aj$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/aj$b;


# direct methods
.method constructor <init>(Lrx/c/a/aj$b;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lrx/c/a/aj$b$1;->a:Lrx/c/a/aj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lrx/c/a/aj$b$1;->a:Lrx/c/a/aj$b;

    iget-object v0, v0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lrx/c/a/aj$b$1;->a:Lrx/c/a/aj$b;

    iget-object v0, v0, Lrx/c/a/aj$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/c/a/aj$b$1;->a:Lrx/c/a/aj$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    return-void
.end method
