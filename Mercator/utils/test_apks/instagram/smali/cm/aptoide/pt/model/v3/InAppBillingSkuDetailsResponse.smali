.class public Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;
.super Lcm/aptoide/pt/model/v3/BaseV3Response;
.source "InAppBillingSkuDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;,
        Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;,
        Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;
    }
.end annotation


# instance fields
.field private metadata:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

.field private paymentServices:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment_services"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private publisherResponse:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "publisher_response"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v3/BaseV3Response;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v4

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPaymentServices()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPaymentServices()Ljava/util/List;

    move-result-object v0

    if-nez v3, :cond_b

    if-eqz v0, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_c
    move v0, v1

    goto :goto_0
.end method

.method public getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->metadata:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    return-object v0
.end method

.method public getPaymentServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentServiceResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->paymentServices:Ljava/util/List;

    return-object v0
.end method

.method public getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->publisherResponse:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 16
    invoke-super {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPaymentServices()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
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

    move-result v1

    goto :goto_2
.end method

.method public setMetadata(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->metadata:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    return-void
.end method

.method public setPaymentServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentServiceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->paymentServices:Ljava/util/List;

    return-void
.end method

.method public setPublisherResponse(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->publisherResponse:Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppBillingSkuDetailsResponse(metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publisherResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPaymentServices()Ljava/util/List;

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
