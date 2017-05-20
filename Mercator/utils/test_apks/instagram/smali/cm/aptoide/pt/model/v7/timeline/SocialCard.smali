.class public abstract Lcm/aptoide/pt/model/v7/timeline/SocialCard;
.super Ljava/lang/Object;
.source "SocialCard.java"

# interfaces
.implements Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# instance fields
.field private final likes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;"
        }
    .end annotation
.end field

.field private final my:Lcm/aptoide/pt/model/v7/timeline/My;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/My;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;",
            "Lcm/aptoide/pt/model/v7/timeline/My;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->likes:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->my:Lcm/aptoide/pt/model/v7/timeline/My;

    .line 19
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialCard;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/SocialCard;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialCard;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getLikes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getLikes()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getLikes()Ljava/util/List;
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
    .line 13
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->likes:Ljava/util/List;

    return-object v0
.end method

.method public getMy()Lcm/aptoide/pt/model/v7/timeline/My;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->my:Lcm/aptoide/pt/model/v7/timeline/My;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 11
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getLikes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
