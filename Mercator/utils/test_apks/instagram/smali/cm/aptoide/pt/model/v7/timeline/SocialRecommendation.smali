.class public Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;
.super Lcm/aptoide/pt/model/v7/timeline/SocialCard;
.source "SocialRecommendation.java"

# interfaces
.implements Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# instance fields
.field private final ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

.field private final app:Lcm/aptoide/pt/model/v7/listapp/App;

.field private final cardId:Ljava/lang/String;

.field private final date:Ljava/util/Date;

.field private final stats:Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

.field private final store:Lcm/aptoide/pt/model/v7/store/Store;

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;

.field private final userSharer:Lcm/aptoide/pt/model/v7/Comment$User;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/Ab;Lcm/aptoide/pt/model/v7/Comment$User;Lcm/aptoide/pt/model/v7/timeline/My;Ljava/util/List;Lcm/aptoide/pt/model/v7/Comment$User;Ljava/util/Date;Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "apps"
        .end annotation
    .end param
    .param p3    # Lcm/aptoide/pt/model/v7/timeline/Ab;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "ab"
        .end annotation
    .end param
    .param p4    # Lcm/aptoide/pt/model/v7/Comment$User;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "user_sharer"
        .end annotation
    .end param
    .param p5    # Lcm/aptoide/pt/model/v7/timeline/My;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "my"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "likes"
        .end annotation
    .end param
    .param p7    # Lcm/aptoide/pt/model/v7/Comment$User;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "user"
        .end annotation
    .end param
    .param p8    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
            pattern = "yyyy-MM-dd"
            timezone = "UTC"
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "date"
        .end annotation
    .end param
    .param p9    # Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "stats"
        .end annotation
    .end param
    .param p10    # Lcm/aptoide/pt/model/v7/store/Store;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "store"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;",
            "Lcm/aptoide/pt/model/v7/timeline/Ab;",
            "Lcm/aptoide/pt/model/v7/Comment$User;",
            "Lcm/aptoide/pt/model/v7/timeline/My;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;",
            "Lcm/aptoide/pt/model/v7/Comment$User;",
            "Ljava/util/Date;",
            "Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p6, p5}, Lcm/aptoide/pt/model/v7/timeline/SocialCard;-><init>(Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/My;)V

    .line 35
    iput-object p3, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    .line 36
    iput-object p8, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->date:Ljava/util/Date;

    .line 37
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->cardId:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 39
    iput-object p4, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 40
    iput-object p9, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->stats:Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    .line 41
    iput-object p10, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->store:Lcm/aptoide/pt/model/v7/store/Store;

    .line 42
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    iput-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->app:Lcm/aptoide/pt/model/v7/listapp/App;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->app:Lcm/aptoide/pt/model/v7/listapp/App;

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getCardId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v3

    if-nez v2, :cond_e

    if-eqz v3, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    if-nez v2, :cond_11

    if-eqz v3, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    if-nez v2, :cond_14

    if-eqz v3, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getDate()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_17

    if-eqz v3, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_18
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    if-nez v2, :cond_19

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->ab:Lcm/aptoide/pt/model/v7/timeline/Ab;

    return-object v0
.end method

.method public getApp()Lcm/aptoide/pt/model/v7/listapp/App;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->app:Lcm/aptoide/pt/model/v7/listapp/App;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->stats:Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 17
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getCardId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getDate()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_7

    :goto_7
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

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method
