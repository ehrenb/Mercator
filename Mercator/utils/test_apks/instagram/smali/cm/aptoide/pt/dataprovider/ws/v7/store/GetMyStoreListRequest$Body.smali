.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "GetMyStoreListRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private refresh:Z

.field private widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 70
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    .line 71
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->isRefresh()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->isRefresh()Z

    move-result v0

    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    goto :goto_1
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->refresh:Z

    return v0
.end method

.method public setRefresh(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;->refresh:Z

    return-void
.end method
