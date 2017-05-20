.class Lrx/c/a/aw$2;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/aw;->a(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/c/a/aw;


# direct methods
.method constructor <init>(Lrx/c/a/aw;Lrx/j;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lrx/c/a/aw$2;->b:Lrx/c/a/aw;

    iput-object p2, p0, Lrx/c/a/aw$2;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lrx/c/a/aw$2;->b:Lrx/c/a/aw;

    iget-object v0, v0, Lrx/c/a/aw;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 62
    new-instance v1, Lrx/c/a/aw$2$1;

    invoke-direct {v1, p0, v0}, Lrx/c/a/aw$2$1;-><init>(Lrx/c/a/aw$2;Lrx/g$a;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 70
    return-void
.end method
