.class public Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;
.super Ljava/lang/Object;
.source "GetAdsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v2/GetAdsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;,
        Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;
    }
.end annotation


# instance fields
.field private data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

.field private info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    instance-of v0, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    return-object v0
.end method

.method public getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 52
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setData(Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->data:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    return-void
.end method

.method public setInfo(Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->info:Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdsResponse.Partner(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

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
