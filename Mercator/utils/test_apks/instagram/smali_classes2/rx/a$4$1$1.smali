.class Lrx/a$4$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$4$1;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/a$4$1;


# direct methods
.method constructor <init>(Lrx/a$4$1;Lrx/k;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lrx/a$4$1$1;->b:Lrx/a$4$1;

    iput-object p2, p0, Lrx/a$4$1$1;->a:Lrx/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 1421
    :try_start_0
    iget-object v0, p0, Lrx/a$4$1$1;->b:Lrx/a$4$1;

    iget-object v0, v0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->e:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    iget-object v0, p0, Lrx/a$4$1$1;->a:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 1426
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
