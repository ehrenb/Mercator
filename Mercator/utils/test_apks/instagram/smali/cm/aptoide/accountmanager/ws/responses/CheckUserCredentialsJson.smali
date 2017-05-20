.class public Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;
.super Ljava/lang/Object;
.source "CheckUserCredentialsJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;,
        Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;
    }
.end annotation


# instance fields
.field public access:Ljava/lang/String;

.field public accessConfirmed:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access_confirmed"
    .end annotation
.end field

.field public avatar:Ljava/lang/String;

.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public queueName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "queueName"
    .end annotation
.end field

.field public ravatarHd:Ljava/lang/String;

.field repo:Ljava/lang/String;

.field public repoDescription:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

.field public settings:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

.field public status:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    invoke-virtual {p1, p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getStatus()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getId()I

    move-result v3

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_f

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_18

    if-eqz v3, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1e

    if-eqz v3, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1f
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v2, :cond_21

    if-eqz v3, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_22
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v3

    if-nez v2, :cond_24

    if-eqz v3, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_25
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_26

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessConfirmed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->accessConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->avatar:Ljava/lang/String;

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
    .line 25
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->id:I

    return v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->queueName:Ljava/lang/String;

    return-object v0
.end method

.method public getRavatarHd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->ravatarHd:Ljava/lang/String;

    return-object v0
.end method

.method public getRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->repo:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->repoDescription:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    return-object v0
.end method

.method public getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->settings:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->errors:Ljava/util/List;

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

    .line 15
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getToken()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getId()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_b

    :goto_b
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

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->access:Ljava/lang/String;

    return-void
.end method

.method public setAccessConfirmed(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->accessConfirmed:Ljava/lang/Boolean;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->avatar:Ljava/lang/String;

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
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->errors:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->id:I

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->queueName:Ljava/lang/String;

    return-void
.end method

.method public setRavatarHd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->ravatarHd:Ljava/lang/String;

    return-void
.end method

.method public setRepo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->repo:Ljava/lang/String;

    return-void
.end method

.method public setRepoDescription(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->repoDescription:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    return-void
.end method

.method public setSettings(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->settings:Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->status:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->token:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUserCredentialsJson(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ravatarHd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessConfirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repoDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

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
