.class public Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;
.super Lcm/aptoide/pt/utils/BaseException;
.source "AptoideWsV7Exception.java"


# instance fields
.field private baseResponse:Lcm/aptoide/pt/model/v7/BaseV7Response;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcm/aptoide/pt/utils/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

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

.method public getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->baseResponse:Lcm/aptoide/pt/model/v7/BaseV7Response;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

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

.method public setBaseResponse(Lcm/aptoide/pt/model/v7/BaseV7Response;)Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->baseResponse:Lcm/aptoide/pt/model/v7/BaseV7Response;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AptoideWsV7Exception(baseResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

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
