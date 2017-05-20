.class public Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "LikeCardRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"

.field private static access_token:Ljava/lang/String;

.field private static cardId:Ljava/lang/String;

.field private static rating:I


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static of(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;
    .locals 3

    .prologue
    .line 31
    sput-object p3, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->access_token:Ljava/lang/String;

    .line 32
    invoke-interface {p0}, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;->getCardId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->cardId:Ljava/lang/String;

    .line 33
    sput p5, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->rating:I

    .line 34
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;-><init>()V

    .line 36
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;

    invoke-virtual {v1, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->cardId:Ljava/lang/String;

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->access_token:Ljava/lang/String;

    sget v0, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->rating:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->setReview(Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
