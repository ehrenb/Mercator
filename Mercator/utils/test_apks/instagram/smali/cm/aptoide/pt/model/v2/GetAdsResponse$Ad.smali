.class public Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;
.super Ljava/lang/Object;
.source "GetAdsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v2/GetAdsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ad"
.end annotation


# instance fields
.field private data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

.field private info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

.field private partner:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

.field private tracker:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    instance-of v0, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getTracker()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getTracker()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    return-object v0
.end method

.method public getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    return-object v0
.end method

.method public getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->partner:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    return-object v0
.end method

.method public getTracker()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->tracker:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getTracker()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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

    move-result v1

    goto :goto_3
.end method

.method public setData(Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    return-void
.end method

.method public setInfo(Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    return-void
.end method

.method public setPartner(Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->partner:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    return-void
.end method

.method public setTracker(Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->tracker:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdsResponse.Ad(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getTracker()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
