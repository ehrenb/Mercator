.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "ListFullCommentsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private limit:Ljava/lang/Integer;

.field private offset:I

.field private q:Ljava/lang/String;

.field private refresh:Z

.field private reviewId:J


# direct methods
.method public constructor <init>(IJLjava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 58
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->q:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->limit:Ljava/lang/Integer;

    .line 66
    iput-wide p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->reviewId:J

    .line 67
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->refresh:Z

    .line 68
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->isRefresh()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->isRefresh()Z

    move-result v4

    if-eq v3, v4, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getReviewId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getReviewId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->offset:I

    return v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->reviewId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 51
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4f

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getReviewId()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

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

    :cond_2
    const/16 v0, 0x61

    goto :goto_2
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->refresh:Z

    return v0
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->offset:I

    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->q:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->refresh:Z

    return-void
.end method

.method public setReviewId(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->reviewId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListFullCommentsRequest.Body(limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->isRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reviewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;->getReviewId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
