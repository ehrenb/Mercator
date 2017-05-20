.class public Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;
.super Ljava/lang/Object;
.source "TimelineStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/TimelineStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusData"
.end annotation


# instance fields
.field private followers:J

.field private following:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getFollowers()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->followers:J

    return-wide v0
.end method

.method public getFollowing()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->following:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 13
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setFollowers(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->followers:J

    return-void
.end method

.method public setFollowing(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->following:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimelineStats.StatusData(followers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

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
