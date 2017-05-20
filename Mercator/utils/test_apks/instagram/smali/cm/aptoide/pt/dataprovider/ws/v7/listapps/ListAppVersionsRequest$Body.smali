.class public Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;
.source "ListAppVersionsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private apkId:Ljava/lang/Integer;

.field private apkMd5sum:Ljava/lang/String;

.field private appId:Ljava/lang/Integer;

.field private lang:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private offset:I

.field private packageId:Ljava/lang/Integer;

.field private packageName:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private storeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private storeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 95
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->lang:Ljava/lang/String;

    .line 100
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->q:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 95
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->lang:Ljava/lang/String;

    .line 100
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->q:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 95
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->lang:Ljava/lang/String;

    .line 100
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->q:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageName:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeNames:Ljava/util/List;

    .line 116
    invoke-virtual {p0, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setStoresAuthMap(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 89
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkId()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkMd5sum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkMd5sum()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getAppId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getAppId()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLang()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_13

    move v0, v2

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageId()Ljava/lang/Integer;

    move-result-object v4

    if-nez v3, :cond_15

    if-eqz v4, :cond_16

    :cond_14
    move v0, v2

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_18

    if-eqz v4, :cond_19

    :cond_17
    move v0, v2

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1b

    if-eqz v4, :cond_1c

    :cond_1a
    move v0, v2

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1d
    move v0, v2

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1f
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_21

    if-eqz v4, :cond_22

    :cond_20
    move v0, v2

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_22
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v0

    if-nez v3, :cond_24

    if-eqz v0, :cond_25

    :cond_23
    move v0, v2

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_25
    move v0, v1

    goto/16 :goto_0
.end method

.method public getApkId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->apkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApkMd5sum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->apkMd5sum:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->appId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->offset:I

    return v0
.end method

.method public getPackageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeIds:Ljava/util/List;

    return-object v0
.end method

.method public getStoreNames()Ljava/util/List;
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
    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeNames:Ljava/util/List;

    return-object v0
.end method

.method public getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 89
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkId()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkMd5sum()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getAppId()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageId()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_a

    :goto_a
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

    move-result v1

    goto :goto_a
.end method

.method public setApkId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->apkId:Ljava/lang/Integer;

    return-void
.end method

.method public setApkMd5sum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->apkMd5sum:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->appId:Ljava/lang/Integer;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->lang:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->offset:I

    return-void
.end method

.method public setPackageId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageId:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->q:Ljava/lang/String;

    return-void
.end method

.method public setStoreIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeIds:Ljava/util/List;

    return-void
.end method

.method public setStoreNames(Ljava/util/List;)V
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
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeNames:Ljava/util/List;

    return-void
.end method

.method public setStoresAuthMap(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    .line 122
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->storeNames:Ljava/util/List;

    .line 124
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListAppVersionsRequest.Body(apkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkMd5sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getApkMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getAppId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storesAuthMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

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
