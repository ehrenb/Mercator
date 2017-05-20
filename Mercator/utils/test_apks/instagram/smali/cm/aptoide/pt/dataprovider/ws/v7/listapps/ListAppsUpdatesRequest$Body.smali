.class public Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "ListAppsUpdatesRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private aaid:Ljava/lang/String;

.field private apksData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;"
        }
    .end annotation
.end field

.field private notApkTags:Ljava/lang/String;

.field private notPackageTags:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->apksData:Ljava/util/List;

    .line 159
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->storeIds:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setQ(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setCountry(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAptoideVercode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setAptoideVercode(I)V

    .line 163
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAaid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->aaid:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAptoideId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setAptoideId(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotApkTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notApkTags:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotPackageTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notPackageTags:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 138
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->apksData:Ljava/util/List;

    .line 139
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->storeIds:Ljava/util/List;

    .line 140
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->aaid:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setNotApkTags()V

    .line 142
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setSystemAppsUpdates()V

    .line 143
    return-void
.end method

.method private setNotApkTags()V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUpdatesFilterAlphaBetaKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "alpha,beta"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notApkTags:Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method private setSystemAppsUpdates()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUpdatesSystemAppsKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "system"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notPackageTags:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 129
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getStoreIds()Ljava/util/List;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAaid()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotApkTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotApkTags()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotPackageTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotPackageTags()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_11

    if-eqz v0, :cond_12

    :cond_10
    move v0, v2

    goto :goto_0

    :cond_11
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_12
    move v0, v1

    goto :goto_0
.end method

.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getApksData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->apksData:Ljava/util/List;

    return-object v0
.end method

.method public getNotApkTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notApkTags:Ljava/lang/String;

    return-object v0
.end method

.method public getNotPackageTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->notPackageTags:Ljava/lang/String;

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
    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->storeIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 129
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getAaid()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotApkTags()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getNotPackageTags()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_4

    :goto_4
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

    move-result v1

    goto :goto_4
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->aaid:Ljava/lang/String;

    return-void
.end method

.method public setApksData(Ljava/util/List;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->apksData:Ljava/util/List;

    return-object p0
.end method
