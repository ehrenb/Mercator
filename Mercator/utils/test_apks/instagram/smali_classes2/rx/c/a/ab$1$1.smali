.class Lrx/c/a/ab$1$1;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ab$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/ab$1;


# direct methods
.method constructor <init>(Lrx/c/a/ab$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lrx/c/a/ab$1$1;->a:Lrx/c/a/ab$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lrx/c/a/ab$1$1;->a:Lrx/c/a/ab$1;

    iget-boolean v0, v0, Lrx/c/a/ab$1;->a:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lrx/c/a/ab$1$1;->a:Lrx/c/a/ab$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/c/a/ab$1;->a:Z

    .line 59
    iget-object v0, p0, Lrx/c/a/ab$1$1;->a:Lrx/c/a/ab$1;

    iget-object v0, v0, Lrx/c/a/ab$1;->c:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 61
    :cond_0
    return-void
.end method
