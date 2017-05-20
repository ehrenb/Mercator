.class public Lcm/aptoide/accountmanager/util/UserCompleteData;
.super Ljava/lang/Object;
.source "UserCompleteData.java"

# interfaces
.implements Lcm/aptoide/pt/actions/UserData;


# instance fields
.field id:Ljava/lang/String;

.field matureSwitch:Z

.field queueName:Ljava/lang/String;

.field userAvatar:Ljava/lang/String;

.field userAvatarRepo:Ljava/lang/String;

.field userEmail:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field userRepo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    instance-of v0, p1, Lcm/aptoide/accountmanager/util/UserCompleteData;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/accountmanager/util/UserCompleteData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/accountmanager/util/UserCompleteData;

    invoke-virtual {p1, p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserEmail()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getQueueName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_14

    if-eqz v3, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_17

    if-eqz v3, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_18
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->isMatureSwitch()Z

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->isMatureSwitch()Z

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->queueName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAvatarRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userAvatarRepo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userRepo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 18
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getQueueName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->isMatureSwitch()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x4f

    :goto_7
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

    move-result v1

    goto :goto_6

    :cond_7
    const/16 v0, 0x61

    goto :goto_7
.end method

.method public isMatureSwitch()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->matureSwitch:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->id:Ljava/lang/String;

    return-void
.end method

.method public setMatureSwitch(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->matureSwitch:Z

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->queueName:Ljava/lang/String;

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserAvatarRepo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userAvatarRepo:Ljava/lang/String;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userEmail:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserRepo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/accountmanager/util/UserCompleteData;->userRepo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCompleteData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userRepo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAvatarRepo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matureSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->isMatureSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
