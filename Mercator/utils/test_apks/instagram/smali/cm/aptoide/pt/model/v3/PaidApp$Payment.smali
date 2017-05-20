.class public Lcm/aptoide/pt/model/v3/PaidApp$Payment;
.super Ljava/lang/Object;
.source "PaidApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v3/PaidApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payment"
.end annotation


# instance fields
.field private amount:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amount"
    .end annotation
.end field

.field private metadata:Lcm/aptoide/pt/model/v3/PaidApp$Metadata;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "metadata"
    .end annotation
.end field

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

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency_symbol"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getSymbol()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getPaymentServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getPaymentServices()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_e

    if-eqz v3, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->metadata:Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

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
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->paymentServices:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 27
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getSymbol()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getPaymentServices()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getStatus()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_4

    :goto_4
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

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public isPaid()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->status:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->amount:Ljava/lang/Double;

    return-void
.end method

.method public setMetadata(Lcm/aptoide/pt/model/v3/PaidApp$Metadata;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->metadata:Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

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
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->paymentServices:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->status:Ljava/lang/String;

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->symbol:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaidApp.Payment(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getPaymentServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getStatus()Ljava/lang/String;

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
