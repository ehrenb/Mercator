.class Lrx/c/a/aw$2$1;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/aw$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/g$a;

.field final synthetic b:Lrx/c/a/aw$2;


# direct methods
.method constructor <init>(Lrx/c/a/aw$2;Lrx/g$a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lrx/c/a/aw$2$1;->b:Lrx/c/a/aw$2;

    iput-object p2, p0, Lrx/c/a/aw$2$1;->a:Lrx/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lrx/c/a/aw$2$1;->b:Lrx/c/a/aw$2;

    iget-object v0, v0, Lrx/c/a/aw$2;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->unsubscribe()V

    .line 67
    iget-object v0, p0, Lrx/c/a/aw$2$1;->a:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 68
    return-void
.end method
