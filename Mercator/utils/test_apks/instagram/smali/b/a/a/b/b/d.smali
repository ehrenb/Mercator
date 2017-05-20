.class public Lb/a/a/b/b/d;
.super Lb/a/a/b/b/c;
.source "Prober.java"


# static fields
.field static a:Ld/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lb/a/a/b/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/b/d;->a:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lb/a/a/b/b/d;->g()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lb/a/a/b/b/c;-><init>(Lb/a/a/l;I)V

    .line 34
    sget-object v0, Lb/a/a/a/g;->a:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/b/b/d;->b(Lb/a/a/a/g;)V

    .line 35
    sget-object v0, Lb/a/a/a/g;->a:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/b/b/d;->a(Lb/a/a/a/g;)V

    .line 36
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
    const/4 v3, 0x0

    .line 117
    .line 118
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->ag:Lb/a/a/a/e;

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v0, v1, v2, v3}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/f;->a(Lb/a/a/g;)V

    .line 119
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    sget-object v1, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/b/b/d;->h()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lb/a/a/k;->a(Lb/a/a/a/d;ZI)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 120
    invoke-virtual {p0, p1, v0}, Lb/a/a/b/b/d;->a(Lb/a/a/f;Lb/a/a/h;)Lb/a/a/f;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    return-object p1
.end method

.method protected a(Lb/a/a/q;Lb/a/a/f;)Lb/a/a/f;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    .line 132
    invoke-virtual {p1}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e;->ag:Lb/a/a/a/e;

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-static {v0, v1, v2, v3}, Lb/a/a/g;->a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lb/a/a/b/b/d;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object v9

    .line 134
    new-instance v0, Lb/a/a/h$f;

    invoke-virtual {p1}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/b/b/d;->h()I

    move-result v4

    invoke-virtual {p1}, Lb/a/a/q;->j()I

    move-result v5

    invoke-virtual {p1}, Lb/a/a/q;->k()I

    move-result v6

    invoke-virtual {p1}, Lb/a/a/q;->i()I

    move-result v7

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v8

    invoke-virtual {v8}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v8

    invoke-virtual {v8}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lb/a/a/h$f;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZIIIILjava/lang/String;)V

    invoke-virtual {p0, v9, v0}, Lb/a/a/b/b/d;->a(Lb/a/a/f;Lb/a/a/h;)Lb/a/a/f;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->z()V

    .line 146
    return-void
.end method

.method public a(Ljava/util/Timer;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lb/a/a/l;->D()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/a/l;->E()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lb/a/a/l;->a(I)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lb/a/a/l;->c(J)V

    .line 70
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->E()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 71
    invoke-static {}, Lb/a/a/l;->F()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 75
    :cond_0
    :goto_1
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lb/a/a/l;->a(I)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 73
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prober("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

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

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "probing"

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lb/a/a/b/b/d;->i()V

    .line 81
    invoke-super {p0}, Lb/a/a/b/b/c;->cancel()Z

    move-result v0

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Lb/a/a/f;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lb/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/f;-><init>(I)V

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lb/a/a/b/b/d;->j()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/g;->a()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/b/b/d;->b(Lb/a/a/a/g;)V

    .line 155
    invoke-virtual {p0}, Lb/a/a/b/b/d;->j()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lb/a/a/b/b/d;->cancel()Z

    .line 158
    invoke-virtual {p0}, Lb/a/a/b/b/d;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->g()V

    .line 160
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/a/a/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b/b/d;->j()Lb/a/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
