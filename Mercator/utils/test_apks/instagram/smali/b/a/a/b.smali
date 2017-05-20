.class public abstract Lb/a/a/b;
.super Ljava/lang/Object;
.source "DNSEntry.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lb/a/a/a/e;

.field private final f:Lb/a/a/a/d;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 7

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lb/a/a/b;->c:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lb/a/a/b;->e:Lb/a/a/a/e;

    .line 45
    iput-object p3, p0, Lb/a/a/b;->f:Lb/a/a/a/d;

    .line 46
    iput-boolean p4, p0, Lb/a/a/b;->g:Z

    .line 47
    invoke-virtual {p0}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    .line 48
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v1, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v2, Lb/a/d$a;->b:Lb/a/d$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v3, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v4, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b;->d:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b;->b:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 53
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lb/a/a/b;->h()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lb/a/d$a;->e:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

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
    .line 243
    invoke-virtual {p0}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 244
    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 246
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public abstract a(J)Z
.end method

.method public a(Lb/a/a/a/d;)Z
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    if-eq v0, p1, :cond_0

    sget-object v0, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/a/a/a/e;)Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/b;->a(Lb/a/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/b;->a(Lb/a/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lb/a/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lb/a/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lb/a/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lb/a/a/b;)I
    .locals 6

    .prologue
    .line 272
    invoke-virtual {p0}, Lb/a/a/b;->n()[B

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lb/a/a/b;->n()[B

    move-result-object v2

    .line 274
    const/4 v0, 0x0

    array-length v3, v1

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 275
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    if-le v4, v5, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 281
    :goto_1
    return v0

    .line 277
    :cond_0
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    if-ge v4, v5, :cond_1

    .line 278
    const/4 v0, -0x1

    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    array-length v0, v1

    array-length v1, v2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public e()Lb/a/a/a/e;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lb/a/a/b;->e:Lb/a/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->e:Lb/a/a/a/e;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/e;->a:Lb/a/a/a/e;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 63
    instance-of v1, p1, Lb/a/a/b;

    if-eqz v1, :cond_0

    .line 64
    check-cast p1, Lb/a/a/b;

    .line 65
    invoke-virtual {p0}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public f()Lb/a/a/a/d;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lb/a/a/b;->f:Lb/a/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->f:Lb/a/a/a/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lb/a/a/b;->g:Z

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lb/a/d$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/e;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v1, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns-sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_services"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v2, Lb/a/d$a;->c:Lb/a/d$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "dns-sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v2, Lb/a/d$a;->d:Lb/a/d$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    const-string v2, "b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "db"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 183
    goto :goto_0

    :cond_2
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lb/a/a/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v1, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "in-addr.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lb/a/a/b;->a:Ljava/util/Map;

    sget-object v1, Lb/a/d$a;->a:Lb/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ip6.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected n()[B
    .locals 2

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 257
    invoke-virtual {p0, v1}, Lb/a/a/b;->a(Ljava/io/DataOutputStream;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 259
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b;->e()Lb/a/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b;->f()Lb/a/a/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-boolean v0, p0, Lb/a/a/b;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "-unique,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0, v1}, Lb/a/a/b;->a(Ljava/lang/StringBuilder;)V

    .line 305
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    const-string v0, ","

    goto :goto_0
.end method
