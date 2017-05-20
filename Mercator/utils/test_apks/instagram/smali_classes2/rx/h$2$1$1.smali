.class Lrx/h$2$1$1;
.super Lrx/i;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h$2$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h$2$1;


# direct methods
.method constructor <init>(Lrx/h$2$1;)V
    .locals 0

    .prologue
    .line 1926
    iput-object p1, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1930
    :try_start_0
    iget-object v0, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v0, v0, Lrx/h$2$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    iget-object v0, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v0, v0, Lrx/h$2$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 1934
    return-void

    .line 1932
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v1, v1, Lrx/h$2$1;->b:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->unsubscribe()V

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1939
    :try_start_0
    iget-object v0, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v0, v0, Lrx/h$2$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-object v0, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v0, v0, Lrx/h$2$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 1943
    return-void

    .line 1941
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/h$2$1$1;->a:Lrx/h$2$1;

    iget-object v1, v1, Lrx/h$2$1;->b:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->unsubscribe()V

    throw v0
.end method
