.class public Lb/a/a/h$e;
.super Lb/a/a/h;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V
    .locals 6

    .prologue
    .line 464
    sget-object v2, Lb/a/a/a/e;->m:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 465
    iput-object p5, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    .line 466
    return-void
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 528
    invoke-virtual {p0}, Lb/a/a/h$e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lb/a/a/h$e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 531
    new-instance v0, Lb/a/a/q;

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 540
    :goto_0
    return-object v0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lb/a/a/h$e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$e;->h()Ljava/util/Map;

    move-result-object v1

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {p0}, Lb/a/a/h$e;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$e;->h()Ljava/util/Map;

    move-result-object v1

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lb/a/a/h$e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 539
    sget-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-virtual {p0}, Lb/a/a/h$e;->h()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$e;->t()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    goto :goto_0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " alias: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    return-void

    .line 563
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public a(Lb/a/a/b;)Z
    .locals 1

    .prologue
    .line 474
    invoke-super {p0, p1}, Lb/a/a/h;->a(Lb/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lb/a/a/h$e;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/a/h$e;

    invoke-virtual {p0, p1}, Lb/a/a/h$e;->a(Lb/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lb/a/a/h;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    instance-of v1, p1, Lb/a/a/h$e;

    if-nez v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    check-cast p1, Lb/a/a/h$e;

    .line 488
    iget-object v1, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lb/a/a/h$e;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 491
    :cond_2
    iget-object v0, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    iget-object v1, p1, Lb/a/a/h$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Lb/a/a/l;)Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method a(Lb/a/a/l;J)Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lb/a/a/l;)Lb/a/c;
    .locals 4

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h$e;->a(Z)Lb/a/d;

    move-result-object v1

    move-object v0, v1

    .line 550
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p1}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 551
    invoke-virtual {v1}, Lb/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p0}, Lb/a/a/h$e;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    new-instance v3, Lb/a/a/p;

    invoke-direct {v3, p1, v0, v2, v1}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    return-object v3
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lb/a/a/h$e;->c:Ljava/lang/String;

    return-object v0
.end method
