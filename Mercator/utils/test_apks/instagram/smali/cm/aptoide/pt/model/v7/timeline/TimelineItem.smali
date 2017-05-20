.class public interface abstract Lcm/aptoide/pt/model/v7/timeline/TimelineItem;
.super Ljava/lang/Object;
.source "TimelineItem.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    value = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "ARTICLE"
            value = Lcm/aptoide/pt/model/v7/timeline/ArticleTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "FEATURE"
            value = Lcm/aptoide/pt/model/v7/timeline/FeatureTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "APPS_LATEST"
            value = Lcm/aptoide/pt/model/v7/timeline/StoreLatestAppsTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "APP_UPDATE"
            value = Lcm/aptoide/pt/model/v7/timeline/AppUpdateTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "RECOMMENDATION"
            value = Lcm/aptoide/pt/model/v7/timeline/RecommendationTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "VIDEO"
            value = Lcm/aptoide/pt/model/v7/timeline/VideoTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SIMILAR"
            value = Lcm/aptoide/pt/model/v7/timeline/SimilarTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SOCIAL_ARTICLE"
            value = Lcm/aptoide/pt/model/v7/timeline/SocialArticleTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SOCIAL_VIDEO"
            value = Lcm/aptoide/pt/model/v7/timeline/SocialVideoTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SOCIAL_STORE"
            value = Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestAppsTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SOCIAL_INSTALL"
            value = Lcm/aptoide/pt/model/v7/timeline/SocialInstallTimelineItem;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SOCIAL_APP"
            value = Lcm/aptoide/pt/model/v7/timeline/SocialRecommendationTimelineItem;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    defaultImpl = Ljava/lang/Void;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
