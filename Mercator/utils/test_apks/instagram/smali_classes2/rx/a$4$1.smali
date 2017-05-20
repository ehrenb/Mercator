.class Lrx/a$4$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$4;->a(Lrx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b;

.field final synthetic b:Lrx/a$4;


# direct methods
.method constructor <init>(Lrx/a$4;Lrx/b;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iput-object p2, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1373
    :try_start_0
    iget-object v0, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    iget-object v0, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-interface {v0}, Lrx/b;->a()V

    .line 1382
    :try_start_1
    iget-object v0, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->b:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1386
    :goto_0
    return-void

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    iget-object v1, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-interface {v1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1383
    :catch_1
    move-exception v0

    .line 1384
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1391
    :try_start_0
    iget-object v0, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->c:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    iget-object v0, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Throwable;)V

    .line 1399
    :try_start_1
    iget-object v0, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->b:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1403
    :goto_1
    return-void

    .line 1392
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1393
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_0

    .line 1400
    :catch_1
    move-exception v0

    .line 1401
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lrx/k;)V
    .locals 3

    .prologue
    .line 1409
    :try_start_0
    iget-object v0, p0, Lrx/a$4$1;->b:Lrx/a$4;

    iget-object v0, v0, Lrx/a$4;->d:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    iget-object v0, p0, Lrx/a$4$1;->a:Lrx/b;

    new-instance v1, Lrx/a$4$1$1;

    invoke-direct {v1, p0, p1}, Lrx/a$4$1$1;-><init>(Lrx/a$4$1;Lrx/k;)V

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/b;->a(Lrx/k;)V

    .line 1428
    :goto_0
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    invoke-interface {p1}, Lrx/k;->unsubscribe()V

    .line 1412
    iget-object v1, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/b;->a(Lrx/k;)V

    .line 1413
    iget-object v1, p0, Lrx/a$4$1;->a:Lrx/b;

    invoke-interface {v1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
