.class public Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;
.super Ljava/lang/Object;
.source "GetFollowers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetFollowers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimelineUser"
.end annotation


# instance fields
.field avatar:Ljava/lang/String;

.field id:J

.field name:Ljava/lang/String;

.field stats:Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

.field store:Lcm/aptoide/pt/model/v7/store/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getAvatar()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStats()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStats()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v3

    if-nez v2, :cond_e

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->stats:Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getId()J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getAvatar()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStats()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
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

    move-result v1

    goto :goto_3
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 12
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->name:Ljava/lang/String;

    return-void
.end method

.method public setStats(Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->stats:Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    return-void
.end method

.method public setStore(Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFollowers.TimelineUser(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;->getStats()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

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
