.class Lrx/c/a/ab$1$3;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ab$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/c/a/ab$1;


# direct methods
.method constructor <init>(Lrx/c/a/ab$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lrx/c/a/ab$1$3;->b:Lrx/c/a/ab$1;

    iput-object p2, p0, Lrx/c/a/ab$1$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lrx/c/a/ab$1$3;->b:Lrx/c/a/ab$1;

    iget-boolean v0, v0, Lrx/c/a/ab$1;->a:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/c/a/ab$1$3;->b:Lrx/c/a/ab$1;

    iget-object v0, v0, Lrx/c/a/ab$1;->c:Lrx/j;

    iget-object v1, p0, Lrx/c/a/ab$1$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method
