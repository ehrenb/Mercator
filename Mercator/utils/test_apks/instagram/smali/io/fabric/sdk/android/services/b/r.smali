.class public Lio/fabric/sdk/android/services/b/r;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method public static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    const/16 v2, 0xc8

    if-lt p0, v2, :cond_1

    const/16 v2, 0x12b

    if-gt p0, v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    const/16 v2, 0x12c

    if-lt p0, v2, :cond_2

    const/16 v2, 0x18f

    if-gt p0, v2, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v2, 0x190

    if-lt p0, v2, :cond_3

    const/16 v2, 0x1f3

    if-le p0, v2, :cond_0

    .line 41
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    move v0, v1

    .line 42
    goto :goto_0

    :cond_4
    move v0, v1

    .line 45
    goto :goto_0
.end method
