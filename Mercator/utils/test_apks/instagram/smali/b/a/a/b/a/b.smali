.class public Lb/a/a/b/a/b;
.super Lb/a/a/b/a/a;
.source "ServiceInfoResolver.java"


# instance fields
.field private final b:Lb/a/a/q;


# direct methods
.method public constructor <init>(Lb/a/a/l;Lb/a/a/q;)V
    .locals 5

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lb/a/a/b/a/a;-><init>(Lb/a/a/l;)V

    .line 29
    iput-object p2, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    .line 30
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb/a/a/q;->a(Lb/a/a/l;)V

    .line 31
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {p2}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/e;->ag:Lb/a/a/a/e;

    sget-object v3, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lb/a/a/l;->a(Lb/a/a/d;Lb/a/a/g;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/f;)Lb/a/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    .line 87
    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v0, v1, v2, v4}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/e;->q:Lb/a/a/a/e;

    sget-object v3, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v1, v2, v3, v4}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v0, v1, v2, v4}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    sget-object v3, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v1, v2, v3, v4}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object p1

    .line 95
    :cond_0
    return-object p1
.end method

.method protected b(Lb/a/a/f;)Lb/a/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .line 64
    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lb/a/a/a/e;->H:Lb/a/a/a/e;

    sget-object v5, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {v0, v1, v4, v5}, Lb/a/a/a;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Lb/a/a/b;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    invoke-virtual {p0, p1, v0, v2, v3}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    iget-object v4, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v4}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lb/a/a/a/e;->q:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {v0, v4, v5, v6}, Lb/a/a/a;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Lb/a/a/b;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    invoke-virtual {p0, v1, v0, v2, v3}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v1

    iget-object v4, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v4}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {v1, v4, v5, v6}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 70
    check-cast v0, Lb/a/a/h;

    invoke-virtual {p0, v1, v0, v2, v3}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;

    move-result-object v0

    move-object v1, v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->v()Lb/a/a/a;

    move-result-object v0

    iget-object v4, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v4}, Lb/a/a/q;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    sget-object v6, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {v0, v4, v5, v6}, Lb/a/a/a;->b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 73
    check-cast v0, Lb/a/a/h;

    invoke-virtual {p0, v1, v0, v2, v3}, Lb/a/a/b/a/b;->a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 77
    :cond_2
    :goto_2
    return-object v1

    :cond_3
    move-object v1, p1

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfoResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

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
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querying service info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lb/a/a/b/a/a;->cancel()Z

    move-result v0

    .line 51
    iget-object v1, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1}, Lb/a/a/q;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lb/a/a/b/a/b;->a()Lb/a/a/l;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/b/a/b;->b:Lb/a/a/q;

    invoke-virtual {v1, v2}, Lb/a/a/l;->a(Lb/a/a/d;)V

    .line 54
    :cond_0
    return v0
.end method
