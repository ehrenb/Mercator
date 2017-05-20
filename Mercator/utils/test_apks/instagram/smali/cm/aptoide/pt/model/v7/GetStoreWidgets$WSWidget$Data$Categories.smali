.class public Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
.super Ljava/lang/Object;
.source "GetStoreWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Categories"
.end annotation


# instance fields
.field private adsCount:I

.field private graphic:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private parentRefId:Ljava/lang/String;

.field private refId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getRefId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getRefId()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentId()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentRefId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentRefId()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_f

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getGraphic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getGraphic()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getAdsCount()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getAdsCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getAdsCount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->adsCount:I

    return v0
.end method

.method public getGraphic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->graphic:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentRefId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->parentRefId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->refId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 53
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getId()J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getRefId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentRefId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getGraphic()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getAdsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setAdsCount(I)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->adsCount:I

    return-object p0
.end method

.method public setGraphic(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->graphic:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public setId(J)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->id:J

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public setParentRefId(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->parentRefId:Ljava/lang/String;

    return-object p0
.end method

.method public setRefId(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->refId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetStoreWidgets.WSWidget.Data.Categories(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentRefId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getParentRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getGraphic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data$Categories;->getAdsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
