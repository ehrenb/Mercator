.class final Lc/m;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lc/d;


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/r;

.field c:Z


# direct methods
.method constructor <init>(Lc/r;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lc/m;->a:Lc/c;

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lc/m;->b:Lc/r;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lc/s;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const-wide/16 v0, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lc/m;->a:Lc/c;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, Lc/s;->read(Lc/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 98
    add-long/2addr v0, v2

    .line 99
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    goto :goto_0

    .line 101
    :cond_1
    return-wide v0
.end method

.method public b()Lc/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lc/m;->a:Lc/c;

    return-object v0
.end method

.method public b(Lc/f;)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Lc/f;)Lc/c;

    .line 47
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    .line 53
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c([B)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b([B)Lc/c;

    .line 85
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->b([BII)Lc/c;

    .line 91
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v1, Lc/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 229
    iget-object v1, p0, Lc/m;->b:Lc/r;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    iget-wide v4, v3, Lc/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lc/r;->write(Lc/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lc/m;->b:Lc/r;

    invoke-interface {v1}, Lc/r;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/m;->c:Z

    .line 242
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/u;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 231
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public e()Lc/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()J

    move-result-wide v0

    .line 178
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/m;->b:Lc/r;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/r;->write(Lc/c;J)V

    .line 179
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    iget-wide v0, v0, Lc/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lc/m;->b:Lc/r;

    iget-object v1, p0, Lc/m;->a:Lc/c;

    iget-object v2, p0, Lc/m;->a:Lc/c;

    iget-wide v2, v2, Lc/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/r;->write(Lc/c;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lc/m;->b:Lc/r;

    invoke-interface {v0}, Lc/r;->flush()V

    .line 219
    return-void
.end method

.method public g(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->d(I)Lc/c;

    .line 135
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->c(I)Lc/c;

    .line 123
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->b(I)Lc/c;

    .line 117
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->k(J)Lc/c;

    .line 165
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public m(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->j(J)Lc/c;

    .line 159
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public n(J)Lc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->i(J)Lc/c;

    .line 147
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lc/t;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lc/m;->b:Lc/r;

    invoke-interface {v0}, Lc/r;->timeout()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/m;->b:Lc/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->write(Lc/c;J)V

    .line 41
    invoke-virtual {p0}, Lc/m;->y()Lc/d;

    .line 42
    return-void
.end method

.method public y()Lc/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v0, p0, Lc/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lc/m;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->h()J

    move-result-wide v0

    .line 171
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/m;->b:Lc/r;

    iget-object v3, p0, Lc/m;->a:Lc/c;

    invoke-interface {v2, v3, v0, v1}, Lc/r;->write(Lc/c;J)V

    .line 172
    :cond_1
    return-object p0
.end method
