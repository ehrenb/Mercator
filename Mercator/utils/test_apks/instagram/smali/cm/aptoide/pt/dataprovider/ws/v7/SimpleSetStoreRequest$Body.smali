.class public Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "SimpleSetStoreRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private storeId:Ljava/lang/Long;

.field private storeName:Ljava/lang/String;

.field private storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 58
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->accessToken:Ljava/lang/String;

    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeId:Ljava/lang/Long;

    .line 60
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    invoke-direct {v0, p4, p5}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->accessToken:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 55
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getAccessToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v4

    if-nez v3, :cond_b

    if-eqz v4, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreProperties()Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreProperties()Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    move-result-object v0

    if-nez v3, :cond_e

    if-eqz v0, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_f
    move v0, v1

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreProperties()Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 43
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreProperties()Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
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

    move-result v1

    goto :goto_3
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeId:Ljava/lang/Long;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setStoreProperties(Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleSetStoreRequest.Body(storeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;->getStoreProperties()Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

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
