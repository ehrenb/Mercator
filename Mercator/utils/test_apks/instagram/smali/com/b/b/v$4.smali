.class final Lcom/b/b/v$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/ca$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/v;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/ca$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/b/b/v;


# direct methods
.method constructor <init>(Lcom/b/b/v;JZ)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    iput-wide p2, p0, Lcom/b/b/v$4;->a:J

    iput-boolean p4, p0, Lcom/b/b/v$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/ca;Ljava/lang/Object;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v1, 0x0

    const/4 v7, 0x3

    .line 421
    check-cast p2, [B

    .line 2220
    iget v4, p1, Lcom/b/b/cc;->p:I

    .line 1426
    invoke-static {}, Lcom/b/b/v;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton config request: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1428
    const/16 v0, 0x190

    if-eq v4, v0, :cond_0

    const/16 v0, 0x196

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19f

    if-ne v4, v0, :cond_2

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0, v8, v9}, Lcom/b/b/v;->a(Lcom/b/b/v;J)J

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1436
    :cond_2
    invoke-virtual {p1}, Lcom/b/b/ca;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 1439
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v2, Lcom/b/b/v$4$1;

    invoke-direct {v2, p0, p2}, Lcom/b/b/v$4$1;-><init>(Lcom/b/b/v$4;[B)V

    invoke-virtual {v0, v2}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->e(Lcom/b/b/v;)Lcom/b/b/by;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b/b/by;->b([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_1
    invoke-static {v0}, Lcom/b/b/v;->a(Lcom/b/b/i;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1456
    :goto_2
    if-eqz v1, :cond_4

    .line 1457
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0, v8, v9}, Lcom/b/b/v;->a(Lcom/b/b/v;J)J

    .line 1459
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    iget-wide v2, p0, Lcom/b/b/v$4;->a:J

    invoke-static {v0, v2, v3}, Lcom/b/b/v;->b(Lcom/b/b/v;J)J

    .line 1460
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    iget-boolean v2, p0, Lcom/b/b/v$4;->b:Z

    invoke-static {v0, v2}, Lcom/b/b/v;->a(Lcom/b/b/v;Z)Z

    .line 1461
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0, v1}, Lcom/b/b/v;->a(Lcom/b/b/v;Lcom/b/b/i;)Lcom/b/b/i;

    .line 1464
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->f(Lcom/b/b/v;)V

    .line 1467
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->g(Lcom/b/b/v;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1468
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->h(Lcom/b/b/v;)Z

    .line 1469
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    const-string v2, "flurry.session_start"

    invoke-static {v0, v2}, Lcom/b/b/v;->a(Lcom/b/b/v;Ljava/lang/String;)V

    .line 1473
    :cond_3
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->i(Lcom/b/b/v;)V

    .line 1477
    :cond_4
    if-nez v1, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->j(Lcom/b/b/v;)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long v2, v0, v2

    .line 1481
    const/16 v0, 0x1ad

    if-ne v4, v0, :cond_5

    .line 1482
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/b/b/ca;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1483
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1484
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1486
    invoke-static {}, Lcom/b/b/v;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server returned retry time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v1, v4}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1488
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1494
    :goto_3
    iget-object v2, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v2, v0, v1}, Lcom/b/b/v;->a(Lcom/b/b/v;J)J

    .line 1496
    invoke-static {}, Lcom/b/b/v;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proton config request failed, backing off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v2}, Lcom/b/b/v;->j(Lcom/b/b/v;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v1}, Lcom/b/b/v;->k(Lcom/b/b/v;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    invoke-static {v2}, Lcom/b/b/v;->j(Lcom/b/b/v;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/b/bg;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    const/4 v2, 0x5

    invoke-static {}, Lcom/b/b/v;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 1490
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/b/b/v;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server returned nonsensical retry time"

    invoke-static {v7, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-wide v0, v2

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_2
.end method
