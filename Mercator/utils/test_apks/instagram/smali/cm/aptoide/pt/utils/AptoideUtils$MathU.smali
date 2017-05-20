.class public final Lcm/aptoide/pt/utils/AptoideUtils$MathU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MathU"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 2

    .prologue
    .line 354
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static greatestCommonDivisor(II)I
    .locals 1

    .prologue
    .line 340
    :goto_0
    if-lez p1, :cond_0

    .line 342
    rem-int v0, p0, p1

    move p0, p1

    move p1, v0

    .line 344
    goto :goto_0

    .line 345
    :cond_0
    return p0
.end method

.method public static leastCommonMultiple(II)I
    .locals 2

    .prologue
    .line 328
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->greatestCommonDivisor(II)I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static leastCommonMultiple([I)I
    .locals 3

    .prologue
    .line 314
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 315
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 316
    aget v2, p0, v0

    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->leastCommonMultiple(II)I

    move-result v1

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return v1
.end method

.method public static mapValueFromRangeToRange(DDDDD)D
    .locals 4

    .prologue
    .line 350
    sub-double v0, p0, p2

    sub-double v2, p4, p2

    div-double/2addr v0, v2

    sub-double v2, p8, p6

    mul-double/2addr v0, v2

    add-double/2addr v0, p6

    return-wide v0
.end method
