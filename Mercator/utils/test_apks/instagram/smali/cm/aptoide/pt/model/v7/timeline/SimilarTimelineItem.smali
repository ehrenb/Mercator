.class public Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;
.super Ljava/lang/Object;
.source "SimilarTimelineItem.java"

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
.field private final similar:Lcm/aptoide/pt/model/v7/timeline/Similar;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Similar;)V
    .locals 0
    .param p1    # Lcm/aptoide/pt/model/v7/timeline/Similar;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->similar:Lcm/aptoide/pt/model/v7/timeline/Similar;

    .line 21
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->similar:Lcm/aptoide/pt/model/v7/timeline/Similar;

    iget-object v3, p1, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->similar:Lcm/aptoide/pt/model/v7/timeline/Similar;

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

.method public getData()Lcm/aptoide/pt/model/v7/timeline/Similar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->similar:Lcm/aptoide/pt/model/v7/timeline/Similar;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->getData()Lcm/aptoide/pt/model/v7/timeline/Similar;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;->similar:Lcm/aptoide/pt/model/v7/timeline/Similar;

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
