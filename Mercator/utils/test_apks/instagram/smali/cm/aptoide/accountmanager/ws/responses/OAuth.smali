.class public Lcm/aptoide/accountmanager/ws/responses/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private error_description:Ljava/lang/String;

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;",
            ">;"
        }
    .end annotation
.end field

.field private refresh_token:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    invoke-virtual {p1, p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError_description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError_description()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_11

    if-eqz v3, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_13

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getError_description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->error_description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 14
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError_description()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getStatus()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_5

    :goto_5
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

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->error:Ljava/lang/String;

    return-void
.end method

.method public setError_description(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->error_description:Ljava/lang/String;

    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->errors:Ljava/util/List;

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/OAuth;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth(accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error_description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getError()Ljava/lang/String;

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
