.class Lrx/c/a/an$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/an;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/g$a;

.field final synthetic c:Lrx/c/a/an;


# direct methods
.method constructor <init>(Lrx/c/a/an;Lrx/j;Lrx/g$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/c/a/an$1;->c:Lrx/c/a/an;

    iput-object p2, p0, Lrx/c/a/an$1;->a:Lrx/j;

    iput-object p3, p0, Lrx/c/a/an$1;->b:Lrx/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lrx/c/a/an$1$1;

    iget-object v2, p0, Lrx/c/a/an$1;->a:Lrx/j;

    invoke-direct {v1, p0, v2, v0}, Lrx/c/a/an$1$1;-><init>(Lrx/c/a/an$1;Lrx/j;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lrx/c/a/an$1;->c:Lrx/c/a/an;

    iget-object v0, v0, Lrx/c/a/an;->b:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 95
    return-void
.end method
