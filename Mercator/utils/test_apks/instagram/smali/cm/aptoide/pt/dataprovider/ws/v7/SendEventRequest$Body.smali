.class public Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;
.source "SendEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;,
        Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    .line 58
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setData(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->setData(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendEventRequest.Body(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;->getData()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

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
