.class Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps$Stores;
.super Ljava/lang/Object;
.source "SocialStoreLatestApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stores"
.end annotation


# instance fields
.field private final card:Lcm/aptoide/pt/model/v7/store/Store;

.field private final user:Lcm/aptoide/pt/model/v7/store/Store;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0
    .param p1    # Lcm/aptoide/pt/model/v7/store/Store;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "user"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/model/v7/store/Store;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "card"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps$Stores;->user:Lcm/aptoide/pt/model/v7/store/Store;

    .line 70
    iput-object p2, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps$Stores;->card:Lcm/aptoide/pt/model/v7/store/Store;

    .line 71
    return-void
.end method


# virtual methods
.method public getCard()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps$Stores;->card:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps$Stores;->user:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method
