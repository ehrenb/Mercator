.class public Lb/a/a/b/a/c;
.super Lb/a/a/b/a/a;
.source "ServiceResolver.java"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/a/a/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lb/a/a/b/a/a;-><init>(Lb/a/a/l;)V

    .line 29
    iput-object p2, p0, Lb/a/a/b/a/c;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/f;)Lb/a/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .line 64
    iget-object v0, p0, Lb/a/a/b/a/c;->b:Ljava/lang/String;

    sget-object v1, Lb/a/a/a/e;->m:Lb/a/a/a/e;

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/b/a/c;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method protected b(Lb/a/a/f;)Lb/a/a/f;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 49
    invoke-virtual {p0}, Lb/a/a/b/a/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lb/a/d;

    .line 50
    new-instance v0, Lb/a/a/h$e;

    invoke-virtual {v5}, Lb/a/d;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    const/4 v3, 0x0

    const/16 v4, 0xe10

    invoke-virtual {v5}, Lb/a/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    invoke-virtual {p0, p1, v0, v6, v7}, Lb/a/a/b/a/c;->a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/a/c;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/a/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "querying service"

    return-object v0
.end method
