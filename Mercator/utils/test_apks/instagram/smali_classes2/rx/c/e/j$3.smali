.class Lrx/c/e/j$3;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/e/j;->m(Lrx/b/e;)Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b/e;

.field final synthetic b:Lrx/c/e/j;


# direct methods
.method constructor <init>(Lrx/c/e/j;Lrx/b/e;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lrx/c/e/j$3;->b:Lrx/c/e/j;

    iput-object p2, p0, Lrx/c/e/j$3;->a:Lrx/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lrx/c/e/j$3;->a:Lrx/b/e;

    iget-object v1, p0, Lrx/c/e/j$3;->b:Lrx/c/e/j;

    iget-object v1, v1, Lrx/c/e/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d;

    .line 232
    instance-of v1, v0, Lrx/c/e/j;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Lrx/c/e/j;

    iget-object v0, v0, Lrx/c/e/j;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/c/e/j;->a(Lrx/j;Ljava/lang/Object;)Lrx/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {p1}, Lrx/e/f;->a(Lrx/j;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/j;)Lrx/k;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/e/j$3;->a(Lrx/j;)V

    return-void
.end method
