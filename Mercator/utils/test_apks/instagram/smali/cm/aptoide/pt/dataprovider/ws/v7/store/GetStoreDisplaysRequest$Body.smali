.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;
.source "GetStoreDisplaysRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    return v0
.end method
