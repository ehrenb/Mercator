.class public Lb/a/a/b/b/b;
.super Lb/a/a/b/b/c;
.source "Canceler.java"


# static fields
.field static a:Ld/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lb/a/a/b/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/b/b;->a:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/a/b/b/c;-><init>(Lb/a/a/l;I)V

    .line 29
    sget-object v0, Lb/a/a/a/g;->g:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/b/b/b;->b(Lb/a/a/a/g;)V

    .line 30
    sget-object v0, Lb/a/a/a/g;->g:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/b/b/b;->a(Lb/a/a/a/g;)V

    .line 31
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
    .line 104
    .line 105
    invoke-virtual {p0}, Lb/a/a/b/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    sget-object v1, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lb/a/a/b/b/b;->h()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/k;->a(Lb/a/a/a/d;ZI)Ljava/util/Collection;

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

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lb/a/a/b/b/b;->a(Lb/a/a/f;Lb/a/a/c;Lb/a/a/h;)Lb/a/a/f;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_0
    return-object p1
.end method

.method protected a(Lb/a/a/q;Lb/a/a/f;)Lb/a/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    .line 118
    sget-object v0, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lb/a/a/b/b/b;->h()I

    move-result v2

    invoke-virtual {p0}, Lb/a/a/b/b/b;->a()Lb/a/a/l;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/a/a/q;->a(Lb/a/a/a/d;ZILb/a/a/k;)Ljava/util/Collection;

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

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v0}, Lb/a/a/b/b/b;->a(Lb/a/a/f;Lb/a/a/c;Lb/a/a/h;)Lb/a/a/f;

    move-result-object p2

    goto :goto_0

    .line 121
    :cond_0
    return-object p2
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lb/a/a/b/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->z()V

    .line 131
    return-void
.end method

.method public a(Ljava/util/Timer;)V
    .locals 6

    .prologue
    .line 57
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceler("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/b/b;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b/b;->a()Lb/a/a/l;

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
    .line 77
    const-string v0, "canceling"

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lb/a/a/b/b/b;->i()V

    .line 68
    invoke-super {p0}, Lb/a/a/b/b/c;->cancel()Z

    move-result v0

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Lb/a/a/f;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lb/a/a/f;

    const v1, 0x8400

    invoke-direct {v0, v1}, Lb/a/a/f;-><init>(I)V

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lb/a/a/b/b/b;->j()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/g;->a()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/b/b/b;->b(Lb/a/a/a/g;)V

    .line 140
    invoke-virtual {p0}, Lb/a/a/b/b/b;->j()Lb/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lb/a/a/b/b/b;->cancel()Z

    .line 143
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/a/a/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b/b/b;->j()Lb/a/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
