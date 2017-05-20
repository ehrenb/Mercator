.class public Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;
.super Ljava/lang/Object;
.source "StoreLatestApps.java"

# interfaces
.implements Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# instance fields
.field private final ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;"
        }
    .end annotation
.end field

.field private final cardId:Ljava/lang/String;

.field private latestUpdate:Ljava/util/Date;

.field private final store:Lcm/aptoide/pt/model/v7/store/Store;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/model/v7/store/Store;Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/Ab;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/model/v7/store/Store;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "store"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "apps"
        .end annotation
    .end param
    .param p4    # Lcm/aptoide/pt/model/v7/timeline/Ab;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "ab"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;",
            "Lcm/aptoide/pt/model/v7/timeline/Ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->cardId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->store:Lcm/aptoide/pt/model/v7/store/Store;

    .line 27
    iput-object p3, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->apps:Ljava/util/List;

    .line 28
    iput-object p4, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    .line 29
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getCardId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

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

.method public getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestUpdate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->latestUpdate:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 34
    iget-object v2, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->latestUpdate:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->latestUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->latestUpdate:Ljava/util/Date;

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->latestUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getCardId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

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
