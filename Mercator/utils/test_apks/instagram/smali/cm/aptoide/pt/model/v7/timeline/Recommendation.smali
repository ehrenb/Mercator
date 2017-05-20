.class public Lcm/aptoide/pt/model/v7/timeline/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"

# interfaces
.implements Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# instance fields
.field private final ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

.field private final cardId:Ljava/lang/String;

.field private final recommendedApp:Lcm/aptoide/pt/model/v7/listapp/App;

.field private final similarApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        timezone = "UTC"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lcm/aptoide/pt/model/v7/listapp/App;Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/Ab;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "timestamp"
        .end annotation
    .end param
    .param p3    # Lcm/aptoide/pt/model/v7/listapp/App;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "app"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "apps"
        .end annotation
    .end param
    .param p5    # Lcm/aptoide/pt/model/v7/timeline/Ab;
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
            "Ljava/util/Date;",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;",
            "Lcm/aptoide/pt/model/v7/timeline/Ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p5, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    .line 33
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->cardId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->timestamp:Ljava/util/Date;

    .line 35
    iput-object p3, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->recommendedApp:Lcm/aptoide/pt/model/v7/listapp/App;

    .line 36
    iput-object p4, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->similarApps:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getCardId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_a

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->recommendedApp:Lcm/aptoide/pt/model/v7/listapp/App;

    return-object v0
.end method

.method public getSimilarApps()Ljava/util/List;
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
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->similarApps:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 20
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getCardId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
