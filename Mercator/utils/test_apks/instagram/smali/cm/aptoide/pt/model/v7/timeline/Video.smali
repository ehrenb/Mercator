.class public Lcm/aptoide/pt/model/v7/timeline/Video;
.super Lcm/aptoide/pt/model/v7/timeline/Feature;
.source "Video.java"


# instance fields
.field private final publisher:Lcm/aptoide/pt/model/v7/timeline/Publisher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/timeline/Publisher;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/Ab;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "thumbnail"
        .end annotation
    .end param
    .param p4    # Lcm/aptoide/pt/model/v7/timeline/Publisher;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "publisher"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "url"
        .end annotation
    .end param
    .param p6    # Ljava/util/Date;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
            pattern = "yyyy-MM-dd"
            timezone = "UTC"
        .end annotation

        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "date"
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "apps"
        .end annotation
    .end param
    .param p8    # Lcm/aptoide/pt/model/v7/timeline/Ab;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/model/v7/timeline/Publisher;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;",
            "Lcm/aptoide/pt/model/v7/timeline/Ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/pt/model/v7/timeline/Feature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcm/aptoide/pt/model/v7/timeline/Ab;)V

    .line 22
    iput-object p4, p0, Lcm/aptoide/pt/model/v7/timeline/Video;->publisher:Lcm/aptoide/pt/model/v7/timeline/Publisher;

    .line 23
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Video;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Video;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/Video;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/timeline/Feature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Video;->publisher:Lcm/aptoide/pt/model/v7/timeline/Publisher;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    return v0
.end method
