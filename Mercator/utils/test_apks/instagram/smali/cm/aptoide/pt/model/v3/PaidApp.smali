.class public Lcm/aptoide/pt/model/v3/PaidApp;
.super Lcm/aptoide/pt/model/v3/BaseV3Response;
.source "PaidApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v3/PaidApp$Path;,
        Lcm/aptoide/pt/model/v3/PaidApp$Metadata;,
        Lcm/aptoide/pt/model/v3/PaidApp$Payment;
    }
.end annotation


# instance fields
.field public path:Lcm/aptoide/pt/model/v3/PaidApp$Path;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "apk"
    .end annotation
.end field

.field private payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment"
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
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/PaidApp;

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
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/PaidApp;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v3/PaidApp;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v3/PaidApp;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v0

    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp;->path:Lcm/aptoide/pt/model/v3/PaidApp$Path;

    return-object v0
.end method

.method public getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp;->payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;

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

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isPaid()Z
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp;->payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp;->payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    .line 23
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v3/PaidApp;->payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    .line 24
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPath(Lcm/aptoide/pt/model/v3/PaidApp$Path;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp;->path:Lcm/aptoide/pt/model/v3/PaidApp$Path;

    return-void
.end method

.method public setPayment(Lcm/aptoide/pt/model/v3/PaidApp$Payment;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/PaidApp;->payment:Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaidApp(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

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
