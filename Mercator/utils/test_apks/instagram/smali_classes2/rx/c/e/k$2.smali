.class Lrx/c/e/k$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/e/k;->f(Lrx/b/e;)Lrx/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b/e;

.field final synthetic b:Lrx/c/e/k;


# direct methods
.method constructor <init>(Lrx/c/e/k;Lrx/b/e;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lrx/c/e/k$2;->b:Lrx/c/e/k;

    iput-object p2, p0, Lrx/c/e/k$2;->a:Lrx/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lrx/c/e/k$2;->a:Lrx/b/e;

    iget-object v1, p0, Lrx/c/e/k$2;->b:Lrx/c/e/k;

    iget-object v1, v1, Lrx/c/e/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h;

    .line 129
    instance-of v1, v0, Lrx/c/e/k;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lrx/c/e/k;

    iget-object v0, v0, Lrx/c/e/k;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v1, Lrx/c/e/k$2$1;

    invoke-direct {v1, p0, p1}, Lrx/c/e/k$2$1;-><init>(Lrx/c/e/k$2;Lrx/i;)V

    .line 143
    invoke-virtual {p1, v1}, Lrx/i;->b(Lrx/k;)V

    .line 144
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/i;)Lrx/k;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/e/k$2;->a(Lrx/i;)V

    return-void
.end method
