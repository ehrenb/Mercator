.class public Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;
.super Ljava/lang/Object;
.source "SocialStoreLatestAppsTimelineItem.java"

# interfaces
.implements Lcm/aptoide/pt/model/v7/timeline/TimelineItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/model/v7/timeline/TimelineItem",
        "<",
        "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
        ">;"
    }
.end annotation


# instance fields
.field private latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;)V
    .locals 0
    .param p1    # Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    .line 17
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    iget-object v3, p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getData()Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->getData()Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;->latestApps:Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
