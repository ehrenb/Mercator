.class Lrx/c/a/an$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/an$1$1;->setProducer(Lrx/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/c/a/an$1$1;


# direct methods
.method constructor <init>(Lrx/c/a/an$1$1;Lrx/f;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/c/a/an$1$1$1;->b:Lrx/c/a/an$1$1;

    iput-object p2, p0, Lrx/c/a/an$1$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lrx/c/a/an$1$1$1;->b:Lrx/c/a/an$1$1;

    iget-object v0, v0, Lrx/c/a/an$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lrx/c/a/an$1$1$1;->a:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->request(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/c/a/an$1$1$1;->b:Lrx/c/a/an$1$1;

    iget-object v0, v0, Lrx/c/a/an$1$1;->b:Lrx/c/a/an$1;

    iget-object v0, v0, Lrx/c/a/an$1;->b:Lrx/g$a;

    new-instance v1, Lrx/c/a/an$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/c/a/an$1$1$1$1;-><init>(Lrx/c/a/an$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    goto :goto_0
.end method
