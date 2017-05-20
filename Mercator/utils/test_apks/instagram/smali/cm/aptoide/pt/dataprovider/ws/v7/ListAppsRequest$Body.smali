.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;
.source "ListAppsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private groupId:Ljava/lang/Integer;

.field private limit:Ljava/lang/Integer;

.field private offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->groupId:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;I)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->limit:Ljava/lang/Integer;

    .line 73
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 59
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getGroupId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getGroupId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v3, :cond_9

    if-eqz v0, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method public getGroupId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->groupId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 59
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->getGroupId()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setGroupId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->groupId:Ljava/lang/Integer;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;->offset:I

    return-void
.end method
