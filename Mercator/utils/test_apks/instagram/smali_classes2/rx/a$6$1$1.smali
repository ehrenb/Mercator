.class Lrx/a$6$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$6$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/a$6$1;


# direct methods
.method constructor <init>(Lrx/a$6$1;)V
    .locals 0

    .prologue
    .line 1624
    iput-object p1, p0, Lrx/a$6$1$1;->a:Lrx/a$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1628
    :try_start_0
    iget-object v0, p0, Lrx/a$6$1$1;->a:Lrx/a$6$1;

    iget-object v0, v0, Lrx/a$6$1;->b:Lrx/b;

    invoke-interface {v0}, Lrx/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    iget-object v0, p0, Lrx/a$6$1$1;->a:Lrx/a$6$1;

    iget-object v0, v0, Lrx/a$6$1;->c:Lrx/c/e/l;

    invoke-virtual {v0}, Lrx/c/e/l;->unsubscribe()V

    .line 1632
    return-void

    .line 1630
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/a$6$1$1;->a:Lrx/a$6$1;

    iget-object v1, v1, Lrx/a$6$1;->c:Lrx/c/e/l;

    invoke-virtual {v1}, Lrx/c/e/l;->unsubscribe()V

    throw v0
.end method
