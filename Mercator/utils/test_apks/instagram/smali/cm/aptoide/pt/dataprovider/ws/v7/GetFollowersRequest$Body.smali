.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "GetFollowersRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private limit:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 31
    const/16 v0, 0x19

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->limit:I

    .line 36
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getOffset()I

    move-result v0

    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->limit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->getOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;->offset:I

    .line 44
    return-void
.end method
