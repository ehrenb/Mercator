.class public Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;
.super Ljava/lang/Object;
.source "SocialCardStats.java"


# instance fields
.field private comments:J

.field private likes:J

.field private usersLikes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getUsersLikes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getUsersLikes()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getComments()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->comments:J

    return-wide v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->likes:J

    return-wide v0
.end method

.method public getUsersLikes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->usersLikes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getUsersLikes()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setComments(J)V
    .locals 1

    .prologue
    .line 9
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->comments:J

    return-void
.end method

.method public setLikes(J)V
    .locals 1

    .prologue
    .line 9
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->likes:J

    return-void
.end method

.method public setUsersLikes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->usersLikes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialCardStats(likes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usersLikes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getUsersLikes()Ljava/util/List;

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
