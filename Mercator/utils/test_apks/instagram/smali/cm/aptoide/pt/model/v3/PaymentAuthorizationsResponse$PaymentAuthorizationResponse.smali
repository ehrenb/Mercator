.class public Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;
.super Ljava/lang/Object;
.source "PaymentAuthorizationsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAuthorizationResponse"
.end annotation


# instance fields
.field private authorizationStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "authorizationStatus"
    .end annotation
.end field

.field private paymentId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "paymentTypeId"
    .end annotation
.end field

.field private successUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "successUrl"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAuthorizationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->authorizationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->paymentId:I

    return v0
.end method

.method public getSuccessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->successUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 21
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

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

.method public setAuthorizationStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->authorizationStatus:Ljava/lang/String;

    return-void
.end method

.method public setPaymentId(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->paymentId:I

    return-void
.end method

.method public setSuccessUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->successUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentAuthorizationsResponse.PaymentAuthorizationResponse(paymentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorizationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

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
