.class public Lb/a/a/h$g;
.super Lb/a/a/h;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V
    .locals 6

    .prologue
    .line 575
    sget-object v2, Lb/a/a/a/e;->q:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 576
    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    :goto_0
    iput-object p5, p0, Lb/a/a/h$g;->c:[B

    .line 577
    return-void

    .line 576
    :cond_0
    sget-object p5, Lb/a/a/h$g;->b:[B

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 644
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$g;->h()Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Lb/a/a/h$g;->c:[B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lb/a/a/h$g;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/a/h$g;->c:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lb/a/a/f$a;->a([BII)V

    .line 589
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 664
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " text: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/h$g;->c:[B

    array-length v0, v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/h$g;->c:[B

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 666
    return-void

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/h$g;->c:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method a(Lb/a/a/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 593
    instance-of v1, p1, Lb/a/a/h$g;

    if-nez v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    check-cast p1, Lb/a/a/h$g;

    .line 597
    iget-object v1, p0, Lb/a/a/h$g;->c:[B

    if-nez v1, :cond_2

    iget-object v1, p1, Lb/a/a/h$g;->c:[B

    if-nez v1, :cond_0

    .line 600
    :cond_2
    iget-object v1, p1, Lb/a/a/h$g;->c:[B

    array-length v1, v1

    iget-object v2, p0, Lb/a/a/h$g;->c:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 603
    iget-object v1, p0, Lb/a/a/h$g;->c:[B

    array-length v1, v1

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 604
    iget-object v1, p1, Lb/a/a/h$g;->c:[B

    aget-byte v1, v1, v2

    iget-object v3, p0, Lb/a/a/h$g;->c:[B

    aget-byte v3, v3, v2

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_1

    .line 608
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lb/a/a/l;)Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method a(Lb/a/a/l;J)Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lb/a/a/l;)Lb/a/c;
    .locals 4

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h$g;->a(Z)Lb/a/d;

    move-result-object v1

    move-object v0, v1

    .line 654
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p1}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 655
    new-instance v0, Lb/a/a/p;

    invoke-virtual {v1}, Lb/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3, v1}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method t()[B
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lb/a/a/h$g;->c:[B

    return-object v0
.end method
