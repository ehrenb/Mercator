.class public abstract Lb/a/a/h;
.super Lb/a/a/b;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/h$b;,
        Lb/a/a/h$f;,
        Lb/a/a/h$g;,
        Lb/a/a/h$e;,
        Lb/a/a/h$a;,
        Lb/a/a/h$d;,
        Lb/a/a/h$c;
    }
.end annotation


# static fields
.field public static final b:[B

.field private static c:Ld/a/b;


# instance fields
.field private d:I

.field private e:J

.field private f:I

.field private final g:I

.field private h:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lb/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/h;->c:Ld/a/b;

    .line 568
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lb/a/a/h;->b:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/b;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 50
    iput p5, p0, Lb/a/a/h;->d:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/h;->e:J

    .line 52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lb/a/a/h;->g:I

    .line 53
    iget v0, p0, Lb/a/a/h;->g:I

    add-int/lit8 v0, v0, 0x50

    iput v0, p0, Lb/a/a/h;->f:I

    .line 54
    return-void
.end method


# virtual methods
.method a(I)J
    .locals 6

    .prologue
    .line 129
    iget-wide v0, p0, Lb/a/a/h;->e:J

    iget v2, p0, Lb/a/a/h;->d:I

    mul-int/2addr v2, p1

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract a(Z)Lb/a/d;
.end method

.method abstract a(Lb/a/a/f$a;)V
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 1048
    invoke-super {p0, p1}, Lb/a/a/b;->a(Ljava/lang/StringBuilder;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ttl: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lb/a/a/h;->b(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/a/a/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    return-void
.end method

.method public a(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lb/a/a/h;->h:Ljava/net/InetAddress;

    .line 1036
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 145
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lb/a/a/h;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lb/a/a/c;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p1}, Lb/a/a/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 102
    invoke-virtual {p0, v0}, Lb/a/a/h;->c(Lb/a/a/h;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v2, Lb/a/a/h;->c:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suppressedBy() message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method abstract a(Lb/a/a/h;)Z
.end method

.method abstract a(Lb/a/a/l;)Z
.end method

.method abstract a(Lb/a/a/l;J)Z
.end method

.method b(J)I
    .locals 7

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lb/a/a/h;->a(I)J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public abstract b(Lb/a/a/l;)Lb/a/c;
.end method

.method b(Lb/a/a/h;)Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Z
    .locals 3

    .prologue
    .line 154
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lb/a/a/h;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lb/a/a/h;)Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lb/a/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lb/a/a/h;->d:I

    iget v1, p0, Lb/a/a/h;->d:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Lb/a/a/h;)V
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p1, Lb/a/a/h;->e:J

    iput-wide v0, p0, Lb/a/a/h;->e:J

    .line 183
    iget v0, p1, Lb/a/a/h;->d:I

    iput v0, p0, Lb/a/a/h;->d:I

    .line 184
    iget v0, p0, Lb/a/a/h;->g:I

    add-int/lit8 v0, v0, 0x50

    iput v0, p0, Lb/a/a/h;->f:I

    .line 185
    return-void
.end method

.method public d(J)Z
    .locals 3

    .prologue
    .line 165
    iget v0, p0, Lb/a/a/h;->f:I

    invoke-virtual {p0, v0}, Lb/a/a/h;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(J)V
    .locals 1

    .prologue
    .line 191
    iput-wide p1, p0, Lb/a/a/h;->e:J

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lb/a/a/h;->d:I

    .line 193
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 62
    instance-of v0, p1, Lb/a/a/h;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lb/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/a/h;

    invoke-virtual {p0, p1}, Lb/a/a/h;->a(Lb/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 172
    iget v0, p0, Lb/a/a/h;->f:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lb/a/a/h;->f:I

    .line 173
    iget v0, p0, Lb/a/a/h;->f:I

    if-le v0, v1, :cond_0

    .line 174
    iput v1, p0, Lb/a/a/h;->f:I

    .line 176
    :cond_0
    return-void
.end method

.method public abstract p()Z
.end method

.method public q()Lb/a/d;
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/h;->a(Z)Lb/a/d;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lb/a/a/h;->h:Ljava/net/InetAddress;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Lb/a/a/h;->d:I

    return v0
.end method
