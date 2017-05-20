.class public Lb/a/a/h$f;
.super Lb/a/a/h;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field private static c:Ld/a/b;


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    const-class v0, Lb/a/a/h$f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/h$f;->c:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZIIIILjava/lang/String;)V
    .locals 6

    .prologue
    .line 681
    sget-object v2, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 682
    iput p5, p0, Lb/a/a/h$f;->d:I

    .line 683
    iput p6, p0, Lb/a/a/h$f;->e:I

    .line 684
    iput p7, p0, Lb/a/a/h$f;->f:I

    .line 685
    iput-object p8, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    .line 686
    return-void
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 7

    .prologue
    .line 845
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$f;->h()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lb/a/a/h$f;->f:I

    iget v3, p0, Lb/a/a/h$f;->e:I

    iget v4, p0, Lb/a/a/h$f;->d:I

    const/4 v6, 0x0

    check-cast v6, [B

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 690
    iget v0, p0, Lb/a/a/h$f;->d:I

    invoke-virtual {p1, v0}, Lb/a/a/f$a;->b(I)V

    .line 691
    iget v0, p0, Lb/a/a/h$f;->e:I

    invoke-virtual {p1, v0}, Lb/a/a/f$a;->b(I)V

    .line 692
    iget v0, p0, Lb/a/a/h$f;->f:I

    invoke-virtual {p1, v0}, Lb/a/a/f$a;->b(I)V

    .line 693
    sget-boolean v0, Lb/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;)V

    .line 703
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Lb/a/a/f$a;->a(Ljava/lang/String;II)V

    .line 701
    invoke-virtual {p1, v2}, Lb/a/a/f$a;->a(I)V

    goto :goto_0
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/io/DataOutputStream;)V

    .line 708
    iget v0, p0, Lb/a/a/h$f;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 709
    iget v0, p0, Lb/a/a/h$f;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 710
    iget v0, p0, Lb/a/a/h$f;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 712
    :try_start_0
    iget-object v0, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " server: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/a/a/h$f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    return-void
.end method

.method a(Lb/a/a/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 745
    instance-of v1, p1, Lb/a/a/h$f;

    if-nez v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 748
    :cond_1
    check-cast p1, Lb/a/a/h$f;

    .line 749
    iget v1, p0, Lb/a/a/h$f;->d:I

    iget v2, p1, Lb/a/a/h$f;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lb/a/a/h$f;->e:I

    iget v2, p1, Lb/a/a/h$f;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lb/a/a/h$f;->f:I

    iget v2, p1, Lb/a/a/h$f;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lb/a/a/l;)Z
    .locals 6

    .prologue
    .line 809
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/h$f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    .line 810
    if-eqz v0, :cond_2

    iget v1, p0, Lb/a/a/h$f;->f:I

    invoke-virtual {v0}, Lb/a/a/q;->i()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    :cond_0
    sget-object v1, Lb/a/a/h$f;->c:Ld/a/b;

    const-string v2, "handleResponse() Denial detected"

    invoke-interface {v1, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Lb/a/a/q;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-static {}, Lb/a/a/n$b;->a()Lb/a/a/n;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    invoke-interface {v2, v3, v4, v5}, Lb/a/a/n;->a(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/n$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/q;->b(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v1, Lb/a/a/h$f;->c:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse() New unique name chose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 821
    :cond_1
    invoke-virtual {v0}, Lb/a/a/q;->w()Z

    .line 822
    const/4 v0, 0x1

    .line 824
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lb/a/a/l;J)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 759
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/h$f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb/a/a/q;

    .line 760
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lb/a/a/q;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Lb/a/a/q;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget v0, p0, Lb/a/a/h$f;->f:I

    invoke-virtual {v9}, Lb/a/a/q;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 761
    :cond_1
    sget-object v0, Lb/a/a/h$f;->c:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuery() Conflicting probe detected from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/h$f;->r()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 762
    new-instance v0, Lb/a/a/h$f;

    invoke-virtual {v9}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    const/16 v4, 0xe10

    invoke-virtual {v9}, Lb/a/a/q;->j()I

    move-result v5

    invoke-virtual {v9}, Lb/a/a/q;->k()I

    move-result v6

    invoke-virtual {v9}, Lb/a/a/q;->i()I

    move-result v7

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v8

    invoke-virtual {v8}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lb/a/a/h$f;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZIIIILjava/lang/String;)V

    .line 766
    :try_start_0
    invoke-virtual {p1}, Lb/a/a/l;->y()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/h$f;->r()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    sget-object v1, Lb/a/a/h$f;->c:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got conflicting probe from ourselves\nincoming: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/h$f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "local   : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/a/h$f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ld/a/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lb/a/a/h$f;->e(Lb/a/a/b;)I

    move-result v0

    .line 775
    if-nez v0, :cond_3

    .line 780
    sget-object v0, Lb/a/a/h$f;->c:Ld/a/b;

    const-string v1, "handleQuery() Ignoring a identical service query"

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    move v3, v10

    .line 804
    :goto_1
    return v3

    .line 769
    :catch_0
    move-exception v1

    .line 770
    sget-object v2, Lb/a/a/h$f;->c:Ld/a/b;

    const-string v4, "IOException"

    invoke-interface {v2, v4, v1}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 785
    :cond_3
    invoke-virtual {v9}, Lb/a/a/q;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 787
    invoke-virtual {v9}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {}, Lb/a/a/n$b;->a()Lb/a/a/n;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v9}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    invoke-interface {v1, v2, v4, v5}, Lb/a/a/n;->a(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/n$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lb/a/a/q;->b(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {p1}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v9}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lb/a/a/h$f;->c:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuery() Lost tie break: new unique name chosen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lb/a/a/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v9}, Lb/a/a/q;->w()Z

    goto :goto_1

    :cond_4
    move v3, v10

    .line 798
    goto :goto_1

    :cond_5
    move v3, v10

    .line 804
    goto :goto_1
.end method

.method public b(Lb/a/a/l;)Lb/a/c;
    .locals 4

    .prologue
    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h$f;->a(Z)Lb/a/d;

    move-result-object v1

    move-object v0, v1

    .line 855
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p1}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 866
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
    .line 754
    const/4 v0, 0x1

    return v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lb/a/a/h$f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lb/a/a/h$f;->d:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lb/a/a/h$f;->e:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lb/a/a/h$f;->f:I

    return v0
.end method
