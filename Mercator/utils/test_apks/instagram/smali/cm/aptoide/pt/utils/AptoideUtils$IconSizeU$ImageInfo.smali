.class public Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field height:I

.field size:J

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1607
    instance-of v0, p1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1607
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->height:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 1609
    iget-wide v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->size:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getSize()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 1607
    iput p1, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->height:I

    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 1607
    iput-wide p1, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->size:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 1607
    iput p1, p0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AptoideUtils.IconSizeU.ImageInfo(height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
