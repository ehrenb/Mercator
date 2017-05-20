.class public Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;
.super Ljava/lang/Object;
.source "WSWidgetsUtils.java"


# static fields
.field public static final USER_DONT_HAVE_STORE_ERROR:Ljava/lang/String; = "MYSTORE-1"

.field public static final USER_NOT_LOGGED_ERROR:Ljava/lang/String; = "AUTH-5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKnownType(Lcm/aptoide/pt/model/v7/Type;)Z
    .locals 1

    .prologue
    .line 160
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$loadWidgetNode$0(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$1(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/ListApps;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$10(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setViewObject(Ljava/lang/Object;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    return-void
.end method

.method static synthetic lambda$loadWidgetNode$11(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$12(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/ListComments;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$13(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$14(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/ListFullReviews;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 104
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$15(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 114
    const-string v1, "AUTH-5"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    instance-of v1, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->shouldAddObjectView(Ljava/util/List;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setViewObject(Ljava/lang/Object;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic lambda$loadWidgetNode$16(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$17(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/store/ListStores;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 121
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$18(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 130
    const-string v1, "AUTH-5"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "MYSTORE-1"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->shouldAddObjectView(Ljava/util/List;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setViewObject(Ljava/lang/Object;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic lambda$loadWidgetNode$19(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$2(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$20(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 137
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$21(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$22(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 145
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$3(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/store/ListStores;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 59
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$4(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$5(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$6(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$7(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v2/GetAdsResponse;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method static synthetic lambda$loadWidgetNode$8(Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadWidgetNode$9(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 0

    .prologue
    .line 85
    return-object p0
.end method

.method public static loadWidgetNode(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->isKnownType(Lcm/aptoide/pt/model/v7/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getView()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://ws75.aptoide.com/api/7/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$1;->$SwitchMap$cm$aptoide$pt$model$v7$Type:[I

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    invoke-static {v0, p1, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 48
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-static {v0, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->ofAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 56
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-static {v0, p1, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 65
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :pswitch_3
    invoke-static {p4, p5, p6, p7}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofHomepage(Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 74
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 80
    :pswitch_4
    invoke-static {v0, p1, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 82
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$14;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :pswitch_5
    invoke-static {v0, p2, p1, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->ofStoreAction(Ljava/lang/String;ZLcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 91
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)Lrx/b/b;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$17;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :pswitch_6
    invoke-static {v0, p2, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->ofAction(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 101
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$19;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$20;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$21;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :pswitch_7
    invoke-static {v0, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 110
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$22;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$24;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$25;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :pswitch_8
    invoke-static {p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreMetaRequest;->of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreMetaRequest;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreMetaRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 126
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$26;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$27;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$28;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$29;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :pswitch_9
    invoke-static {v0, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->ofAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 142
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$30;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/b;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$31;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$32;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static shouldAddObjectView(Ljava/util/List;Ljava/lang/Throwable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 164
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v0, :cond_1

    .line 165
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    .line 167
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
