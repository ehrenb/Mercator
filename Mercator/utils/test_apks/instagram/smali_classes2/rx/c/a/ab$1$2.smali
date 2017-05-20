.class Lrx/c/a/ab$1$2;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ab$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lrx/c/a/ab$1;


# direct methods
.method constructor <init>(Lrx/c/a/ab$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lrx/c/a/ab$1$2;->b:Lrx/c/a/ab$1;

    iput-object p2, p0, Lrx/c/a/ab$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lrx/c/a/ab$1$2;->b:Lrx/c/a/ab$1;

    iget-boolean v0, v0, Lrx/c/a/ab$1;->a:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/c/a/ab$1$2;->b:Lrx/c/a/ab$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/c/a/ab$1;->a:Z

    .line 73
    iget-object v0, p0, Lrx/c/a/ab$1$2;->b:Lrx/c/a/ab$1;

    iget-object v0, v0, Lrx/c/a/ab$1;->c:Lrx/j;

    iget-object v1, p0, Lrx/c/a/ab$1$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lrx/c/a/ab$1$2;->b:Lrx/c/a/ab$1;

    iget-object v0, v0, Lrx/c/a/ab$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 76
    :cond_0
    return-void
.end method
