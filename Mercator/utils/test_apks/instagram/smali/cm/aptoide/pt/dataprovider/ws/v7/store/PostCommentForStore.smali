.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "PostCommentForStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/SetComment;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static of(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;
    .locals 8

    .prologue
    .line 36
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p6}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    move-wide v1, p0

    move-object v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;-><init>(JLjava/lang/String;J)V

    .line 38
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;

    invoke-virtual {v6, v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    const-string v2, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;Ljava/lang/String;)V

    return-object v1
.end method

.method public static of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    invoke-direct {v1, p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;-><init>(JLjava/lang/String;)V

    .line 31
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->postStoreComment(Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
