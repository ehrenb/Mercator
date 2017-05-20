.class public Lcm/aptoide/pt/model/v7/listapp/App;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/listapp/App$Stats;
    }
.end annotation


# instance fields
.field private added:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        timezone = "UTC"
    .end annotation
.end field

.field private file:Lcm/aptoide/pt/model/v7/listapp/File;

.field private graphic:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:J

.field private modified:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        timezone = "UTC"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private obb:Lcm/aptoide/pt/model/v7/Obb;

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "package"
    .end annotation
.end field

.field private size:J

.field private stats:Lcm/aptoide/pt/model/v7/listapp/App$Stats;

.field private store:Lcm/aptoide/pt/model/v7/store/Store;

.field private updated:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        timezone = "UTC"
    .end annotation
.end field

.field private uptype:Ljava/lang/String;


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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/listapp/App;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/listapp/App;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/listapp/App;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_e
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_11
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getAdded()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getAdded()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_13

    if-eqz v3, :cond_14

    :cond_12
    move v0, v1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_14
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getModified()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_16

    if-eqz v3, :cond_17

    :cond_15
    move v0, v1

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_17
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_19

    if-eqz v3, :cond_1a

    :cond_18
    move v0, v1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_1a
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUptype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getUptype()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1c

    if-eqz v3, :cond_1d

    :cond_1b
    move v0, v1

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1d
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    if-nez v2, :cond_1f

    if-eqz v3, :cond_20

    :cond_1e
    move v0, v1

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_20
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v3

    if-nez v2, :cond_22

    if-eqz v3, :cond_23

    :cond_21
    move v0, v1

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_23
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v3

    if-nez v2, :cond_25

    if-eqz v3, :cond_26

    :cond_24
    move v0, v1

    goto/16 :goto_0

    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_26
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v3

    if-nez v2, :cond_27

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_27
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAdded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->added:Ljava/util/Date;

    return-object v0
.end method

.method public getFile()Lcm/aptoide/pt/model/v7/listapp/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->file:Lcm/aptoide/pt/model/v7/listapp/File;

    return-object v0
.end method

.method public getGraphic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->graphic:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->id:J

    return-wide v0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObb()Lcm/aptoide/pt/model/v7/Obb;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->size:J

    return-wide v0
.end method

.method public getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->stats:Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUptype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App;->uptype:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v1, 0x2b

    .line 18
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getSize()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getAdded()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getModified()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUptype()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_b

    :goto_b
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

.method public setAdded(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->added:Ljava/util/Date;

    return-void
.end method

.method public setFile(Lcm/aptoide/pt/model/v7/listapp/File;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->file:Lcm/aptoide/pt/model/v7/listapp/File;

    return-void
.end method

.method public setGraphic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->graphic:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->id:J

    return-void
.end method

.method public setModified(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->modified:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->name:Ljava/lang/String;

    return-void
.end method

.method public setObb(Lcm/aptoide/pt/model/v7/Obb;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->size:J

    return-void
.end method

.method public setStats(Lcm/aptoide/pt/model/v7/listapp/App$Stats;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->stats:Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    return-void
.end method

.method public setStore(Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->updated:Ljava/util/Date;

    return-void
.end method

.method public setUptype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App;->uptype:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getGraphic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getAdded()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUptype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

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
