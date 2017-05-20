.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListStoresRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/store/ListStores;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field static final STORT_BY_DOWNLOADS:Ljava/lang/String; = "downloads7d"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p4, p2, p3, p5}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p3, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static ofAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 4

    .prologue
    .line 61
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v2, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v0, "listStores"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 67
    :goto_0
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;-><init>()V

    invoke-virtual {v2, v0, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v3, v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V

    return-object v3

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static ofTopStores(IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;-><init>()V

    .line 54
    invoke-virtual {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;->setOffset(I)V

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;->limit:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;->access$002(Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 56
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v1, "downloads7d"

    const/16 v2, 0xa

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    invoke-interface {p1, v1, v2, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listTopStores(Ljava/lang/String;ILcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Z)Lrx/d;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listStores(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Z)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
