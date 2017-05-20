.class public Lio/realm/internal/UncheckedRow;
.super Lio/realm/internal/g;
.source "UncheckedRow.java"

# interfaces
.implements Lio/realm/internal/l;


# instance fields
.field final a:Lio/realm/internal/c;

.field final d:Lio/realm/internal/Table;


# direct methods
.method protected constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lio/realm/internal/g;-><init>()V

    .line 38
    iput-object p1, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/c;

    .line 39
    iput-object p2, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    .line 40
    iput-wide p3, p0, Lio/realm/internal/UncheckedRow;->c:J

    .line 42
    invoke-virtual {p1}, Lio/realm/internal/c;->a()V

    .line 43
    return-void
.end method

.method public static b(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p1, Lio/realm/internal/Table;->b:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    .line 55
    new-instance v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lio/realm/internal/c;->a(ILio/realm/internal/g;)V

    .line 57
    return-object v2
.end method

.method public static c(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lio/realm/internal/c;->a(ILio/realm/internal/g;)V

    .line 71
    return-object v0
.end method

.method static native nativeClose(J)V
.end method

.method public static native nativeGetLinkView(JJ)J
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JD)V
    .locals 9

    .prologue
    .line 200
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 201
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetDouble(JJD)V

    .line 202
    return-void
.end method

.method public a(JF)V
    .locals 7

    .prologue
    .line 194
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 195
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetFloat(JJF)V

    .line 196
    return-void
.end method

.method public a(JJ)V
    .locals 9

    .prologue
    .line 181
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 182
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->b()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->c()J

    move-result-wide v4

    move-wide v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJJ)V

    .line 183
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLong(JJJ)V

    .line 184
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 222
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 223
    if-nez p3, :cond_0

    .line 224
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->c()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->a(JJ)V

    .line 225
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->b()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->c()J

    move-result-wide v4

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;)V

    .line 228
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetString(JJLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(JLjava/util/Date;)V
    .locals 9

    .prologue
    .line 206
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 207
    if-nez p3, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Date is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 211
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetTimestamp(JJJ)V

    .line 212
    return-void
.end method

.method public a(JZ)V
    .locals 7

    .prologue
    .line 188
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 189
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetBoolean(JJZ)V

    .line 190
    return-void
.end method

.method public a(J[B)V
    .locals 7

    .prologue
    .line 234
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 235
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetByteArray(JJ[B)V

    .line 236
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 168
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result v0

    return v0
.end method

.method public b()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    return-object v0
.end method

.method public b(JJ)V
    .locals 9

    .prologue
    .line 240
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 241
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLink(JJJ)V

    .line 242
    return-void
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 252
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 5

    .prologue
    .line 262
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 263
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->c()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->a(JJ)V

    .line 264
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    .line 265
    return-void
.end method

.method public d(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeIsAttached(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(J)Lio/realm/RealmFieldType;
    .locals 3

    .prologue
    .line 111
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/realm/internal/CheckedRow;
    .locals 1

    .prologue
    .line 273
    invoke-static {p0}, Lio/realm/internal/CheckedRow;->a(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public f(J)J
    .locals 3

    .prologue
    .line 128
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)Z
    .locals 3

    .prologue
    .line 133
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetBoolean(JJ)Z

    move-result v0

    return v0
.end method

.method public h(J)F
    .locals 3

    .prologue
    .line 138
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetFloat(JJ)F

    move-result v0

    return v0
.end method

.method public i(J)D
    .locals 3

    .prologue
    .line 143
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDouble(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public j(J)Ljava/util/Date;
    .locals 5

    .prologue
    .line 148
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetTimestamp(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public k(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(J)[B
    .locals 3

    .prologue
    .line 158
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetByteArray(JJ)[B

    move-result-object v0

    return-object v0
.end method

.method public m(J)Lio/realm/internal/LinkView;
    .locals 9

    .prologue
    .line 173
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLinkView(JJ)J

    move-result-wide v6

    .line 174
    new-instance v1, Lio/realm/internal/LinkView;

    iget-object v2, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/c;

    iget-object v3, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;JJ)V

    return-object v1
.end method

.method public n(J)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()V

    .line 247
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeNullifyLink(JJ)V

    .line 248
    return-void
.end method

.method protected native nativeGetBoolean(JJ)Z
.end method

.method protected native nativeGetByteArray(JJ)[B
.end method

.method protected native nativeGetColumnCount(J)J
.end method

.method protected native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method protected native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetColumnType(JJ)I
.end method

.method protected native nativeGetDouble(JJ)D
.end method

.method protected native nativeGetFloat(JJ)F
.end method

.method protected native nativeGetIndex(J)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeIsAttached(J)Z
.end method

.method protected native nativeIsNull(JJ)Z
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
.end method

.method protected native nativeSetDouble(JJD)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetNull(JJ)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method
