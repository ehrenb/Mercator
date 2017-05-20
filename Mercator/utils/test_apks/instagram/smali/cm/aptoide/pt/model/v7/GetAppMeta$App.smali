.class public Lcm/aptoide/pt/model/v7/GetAppMeta$App;
.super Ljava/lang/Object;
.source "GetAppMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetAppMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# instance fields
.field private added:Ljava/lang/String;

.field private developer:Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

.field private file:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

.field private graphic:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:J

.field private media:Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

.field private modified:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private obb:Lcm/aptoide/pt/model/v7/Obb;

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "package"
    .end annotation
.end field

.field private pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

.field private size:J

.field private stats:Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

.field private store:Lcm/aptoide/pt/model/v7/store/Store;

.field private urls:Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getAdded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getAdded()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getModified()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getModified()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v3

    if-nez v2, :cond_28

    if-eqz v3, :cond_29

    :cond_27
    move v0, v1

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_29
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v3

    if-nez v2, :cond_2b

    if-eqz v3, :cond_2c

    :cond_2a
    move v0, v1

    goto/16 :goto_0

    :cond_2b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_2c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v3

    if-nez v2, :cond_2d

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAdded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->added:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->developer:Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    return-object v0
.end method

.method public getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->file:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    return-object v0
.end method

.method public getGraphic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->graphic:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->id:J

    return-wide v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->file:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->file:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->media:Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    return-object v0
.end method

.method public getModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObb()Lcm/aptoide/pt/model/v7/Obb;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->size:J

    return-wide v0
.end method

.method public getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->stats:Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->urls:Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v1, 0x2b

    .line 22
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getSize()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getAdded()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getModified()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_d

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1

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

    move-result v0

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d
.end method

.method public isPaid()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->getPrice()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->getPrice()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

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

.method public setAdded(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->added:Ljava/lang/String;

    return-void
.end method

.method public setDeveloper(Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->developer:Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    return-void
.end method

.method public setFile(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->file:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    return-void
.end method

.method public setGraphic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->graphic:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->id:J

    return-void
.end method

.method public setMedia(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->media:Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    return-void
.end method

.method public setModified(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->modified:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->name:Ljava/lang/String;

    return-void
.end method

.method public setObb(Lcm/aptoide/pt/model/v7/Obb;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPay(Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->pay:Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->size:J

    return-void
.end method

.method public setStats(Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->stats:Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    return-void
.end method

.method public setStore(Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-void
.end method

.method public setUrls(Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->urls:Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppMeta.App(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getAdded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", developer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

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
