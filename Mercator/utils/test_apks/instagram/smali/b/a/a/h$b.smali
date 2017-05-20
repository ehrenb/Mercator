.class public Lb/a/a/h$b;
.super Lb/a/a/h;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 895
    sget-object v2, Lb/a/a/a/e;->n:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lb/a/a/h;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V

    .line 896
    iput-object p5, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    .line 897
    iput-object p6, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    .line 898
    return-void
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 971
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 972
    const-string v0, "cpu"

    iget-object v1, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v0, "os"

    iget-object v1, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/h$b;->h()Ljava/util/Map;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lb/a/a/q;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

    return-object v0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 3

    .prologue
    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lb/a/a/f$a;->a(Ljava/lang/String;II)V

    .line 963
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 994
    invoke-super {p0, p1}, Lb/a/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cpu: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' os: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    return-void
.end method

.method a(Lb/a/a/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 933
    instance-of v1, p1, Lb/a/a/h$b;

    if-nez v1, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v0

    .line 936
    :cond_1
    check-cast p1, Lb/a/a/h$b;

    .line 937
    iget-object v1, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lb/a/a/h$b;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 940
    :cond_2
    iget-object v1, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lb/a/a/h$b;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 943
    :cond_3
    iget-object v1, p0, Lb/a/a/h$b;->d:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/h$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/h$b;->c:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/h$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lb/a/a/l;)Z
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method a(Lb/a/a/l;J)Z
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lb/a/a/l;)Lb/a/c;
    .locals 4

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h$b;->a(Z)Lb/a/d;

    move-result-object v1

    move-object v0, v1

    .line 984
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p1}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 985
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
    .line 952
    const/4 v0, 0x1

    return v0
.end method
