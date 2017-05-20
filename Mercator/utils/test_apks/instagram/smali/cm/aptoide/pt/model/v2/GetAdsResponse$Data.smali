.class public Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;
.super Ljava/lang/Object;
.source "GetAdsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v2/GetAdsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private downloads:I

.field private icon:Ljava/lang/String;

.field private id:J

.field private md5sum:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "package"
    .end annotation
.end field

.field private repo:Ljava/lang/String;

.field private size:J

.field private stars:I

.field private vercode:I

.field private vername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getRepo()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getMd5sum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getMd5sum()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_0

    :cond_11
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVercode()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVercode()I

    move-result v3

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVername()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_14

    if-eqz v3, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_17

    if-eqz v3, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_18
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDownloads()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDownloads()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getStars()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getStars()I

    move-result v3

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->downloads:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->id:J

    return-wide v0
.end method

.method public getMd5sum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->md5sum:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->repo:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->size:J

    return-wide v0
.end method

.method public getStars()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->stars:I

    return v0
.end method

.method public getVercode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->vercode:I

    return v0
.end method

.method public getVername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->vername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v1, 0x2b

    .line 19
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getId()J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getRepo()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getMd5sum()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getSize()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVercode()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVername()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDownloads()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getStars()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDescription()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
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

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloads(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->downloads:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->id:J

    return-void
.end method

.method public setMd5sum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->md5sum:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRepo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->repo:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->size:J

    return-void
.end method

.method public setStars(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->stars:I

    return-void
.end method

.method public setVercode(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->vercode:I

    return-void
.end method

.method public setVername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->vername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdsResponse.Data(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", md5sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVercode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getVername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDownloads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getStars()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
