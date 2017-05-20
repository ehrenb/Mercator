.class public Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;
.super Lcm/aptoide/pt/model/v7/listapp/File;
.source "GetAppMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetAppMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAppMetaFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;,
        Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;,
        Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;
    }
.end annotation


# instance fields
.field private flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

.field private hardware:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

.field private malware:Lcm/aptoide/pt/model/v7/Malware;

.field private signature:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/listapp/File;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 74
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/listapp/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getSignature()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getSignature()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getHardware()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getHardware()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v4

    if-nez v3, :cond_e

    if-eqz v4, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedFeatures()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_11

    if-eqz v4, :cond_12

    :cond_10
    move v0, v2

    goto :goto_0

    :cond_11
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_14

    if-eqz v4, :cond_15

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v3, :cond_17

    if-eqz v0, :cond_18

    :cond_16
    move v0, v2

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_18
    move v0, v1

    goto/16 :goto_0
.end method

.method public getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    return-object v0
.end method

.method public getHardware()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->hardware:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

    return-object v0
.end method

.method public getMalware()Lcm/aptoide/pt/model/v7/Malware;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->malware:Lcm/aptoide/pt/model/v7/Malware;

    return-object v0
.end method

.method public getSignature()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->signature:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUsedFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->usedFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getUsedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->usedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 74
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/listapp/File;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getSignature()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getHardware()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedFeatures()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedPermissions()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getTags()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
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
.end method

.method public isGoodApp()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    iget-object v0, v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->review:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    iget-object v0, v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->review:Ljava/lang/String;

    const-string v1, "GOOD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlags(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->flags:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    return-void
.end method

.method public setHardware(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->hardware:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

    return-void
.end method

.method public setMalware(Lcm/aptoide/pt/model/v7/Malware;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->malware:Lcm/aptoide/pt/model/v7/Malware;

    return-void
.end method

.method public setSignature(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->signature:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->tags:Ljava/util/List;

    return-void
.end method

.method public setUsedFeatures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->usedFeatures:Ljava/util/List;

    return-void
.end method

.method public setUsedPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->usedPermissions:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppMeta.GetAppMetaFile(signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getSignature()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Signature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getHardware()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Hardware;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", malware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedFeatures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usedPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getUsedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getTags()Ljava/util/List;

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
