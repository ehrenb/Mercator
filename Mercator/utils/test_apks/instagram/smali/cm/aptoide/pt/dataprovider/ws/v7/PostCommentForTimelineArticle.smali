.class public Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "PostCommentForTimelineArticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/SetComment;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static of(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;

    invoke-direct {v1, p0, p3, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 37
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;

    invoke-virtual {v0, v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/SetComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->postTimelineComment(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
