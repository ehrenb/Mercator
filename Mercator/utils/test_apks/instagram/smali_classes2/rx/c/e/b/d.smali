.class public final Lrx/c/e/b/d;
.super Lrx/c/e/b/h;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/e/b/h",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lrx/c/e/b/h;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/c/e/b/d;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lrx/c/e/b/d;->c:[Ljava/lang/Object;

    .line 127
    iget-wide v2, p0, Lrx/c/e/b/d;->b:J

    .line 128
    invoke-virtual {p0}, Lrx/c/e/b/d;->b()J

    move-result-wide v4

    .line 129
    invoke-virtual {p0, v4, v5}, Lrx/c/e/b/d;->a(J)J

    move-result-wide v6

    .line 130
    invoke-virtual {p0, v0, v6, v7}, Lrx/c/e/b/d;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 133
    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p0, v0, v6, v7}, Lrx/c/e/b/d;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 141
    :cond_2
    invoke-virtual {p0, v0, v6, v7, p1}, Lrx/c/e/b/d;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lrx/c/e/b/d;->c(J)V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lrx/c/e/b/d;->c()J

    move-result-wide v2

    .line 180
    :cond_0
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v0

    .line 181
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 182
    invoke-virtual {p0}, Lrx/c/e/b/d;->b()J

    move-result-wide v4

    .line 183
    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 186
    :cond_1
    invoke-virtual {p0, v4, v5}, Lrx/c/e/b/d;->d(J)V

    .line 189
    :cond_2
    invoke-virtual {p0, v0, v1}, Lrx/c/e/b/d;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/c/e/b/d;->b(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lrx/c/e/b/d;->c()J

    move-result-wide v2

    .line 153
    :cond_0
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v4

    .line 154
    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lrx/c/e/b/d;->b()J

    move-result-wide v6

    .line 156
    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 171
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0, v6, v7}, Lrx/c/e/b/d;->d(J)V

    .line 162
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {p0, v4, v5, v6, v7}, Lrx/c/e/b/d;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0, v4, v5}, Lrx/c/e/b/d;->a(J)J

    move-result-wide v2

    .line 166
    iget-object v4, p0, Lrx/c/e/b/d;->c:[Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, v4, v2, v3}, Lrx/c/e/b/d;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-virtual {p0, v4, v2, v3, v0}, Lrx/c/e/b/d;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 200
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v0

    .line 203
    :goto_0
    invoke-virtual {p0}, Lrx/c/e/b/d;->b()J

    move-result-wide v4

    .line 204
    invoke-virtual {p0}, Lrx/c/e/b/d;->a()J

    move-result-wide v2

    .line 205
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    .line 208
    goto :goto_0
.end method
