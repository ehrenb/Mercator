.class public Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;
.super Ljava/lang/Object;
.source "InAppBillingSkuDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublisherResponse"
.end annotation


# instance fields
.field private detailList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "DETAILS_LIST"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->detailList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setDetailList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->detailList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppBillingSkuDetailsResponse.PublisherResponse(detailList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

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
