.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;
.source "CheckedRow.java"


# instance fields
.field private e:Lio/realm/internal/UncheckedRow;


# direct methods
.method private constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/c;

    iget-object v1, p1, Lio/realm/internal/UncheckedRow;->d:Lio/realm/internal/Table;

    iget-wide v2, p1, Lio/realm/internal/UncheckedRow;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V

    .line 41
    iput-object p1, p0, Lio/realm/internal/CheckedRow;->e:Lio/realm/internal/UncheckedRow;

    .line 42
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V

    .line 37
    return-void
.end method

.method public static a(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p0}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    return-object v0
.end method

.method public static a(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p1, Lio/realm/internal/Table;->b:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    .line 54
    new-instance v2, Lio/realm/internal/CheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lio/realm/internal/c;->a(ILio/realm/internal/g;)V

    .line 56
    return-object v2
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->e(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 87
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->a(J)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->b(J)Z

    move-result v0

    return v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->e(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 108
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lio/realm/internal/UncheckedRow;->a(J[B)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->c(J)V

    goto :goto_0
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

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
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

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method
