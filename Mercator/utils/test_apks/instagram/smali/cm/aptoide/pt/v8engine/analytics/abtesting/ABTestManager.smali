.class public Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;
.super Ljava/lang/Object;
.source "ABTestManager.java"


# static fields
.field public static final SEARCH_TAB_TEST:Ljava/lang/String; = "search-result"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;


# instance fields
.field private final controlTests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private sixpack:Lcom/seatgeek/sixpack/g;

.field private sixpackBuilder:Lcom/seatgeek/sixpack/h;

.field private final sixpackUrl:Ljava/lang/String;

.field private final tests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/seatgeek/sixpack/h;Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpackBuilder:Lcom/seatgeek/sixpack/h;

    .line 36
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->httpClient:Lokhttp3/OkHttpClient;

    .line 37
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpackUrl:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->tests:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->controlTests:Ljava/util/Set;

    .line 40
    return-void
.end method

.method private getControl(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->controlTests:Ljava/util/Set;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->registerControlTests()V

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->controlTests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    .line 105
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    monitor-exit v1

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No AB test for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    new-instance v1, Lcom/seatgeek/sixpack/h;

    invoke-direct {v1}, Lcom/seatgeek/sixpack/h;-><init>()V

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$1;->lambdaFactory$()Lokhttp3/Authenticator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    const-string v3, "http://ab.aptoide.com"

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;-><init>(Lcom/seatgeek/sixpack/h;Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    .line 51
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->instance:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    return-object v0
.end method

.method private initializeSixpack(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpackBuilder:Lcom/seatgeek/sixpack/h;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpackUrl:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/seatgeek/sixpack/h;->a(Lokhttp3/HttpUrl;)Lcom/seatgeek/sixpack/h;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->httpClient:Lokhttp3/OkHttpClient;

    .line 63
    invoke-virtual {v0, v1}, Lcom/seatgeek/sixpack/h;->a(Lokhttp3/OkHttpClient;)Lcom/seatgeek/sixpack/h;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/seatgeek/sixpack/h;->a(Ljava/lang/String;)Lcom/seatgeek/sixpack/h;

    move-result-object v0

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->NONE:Lcom/seatgeek/sixpack/a/b;

    .line 65
    invoke-virtual {v0, v1}, Lcom/seatgeek/sixpack/h;->a(Lcom/seatgeek/sixpack/a/b;)Lcom/seatgeek/sixpack/h;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/seatgeek/sixpack/h;->a()Lcom/seatgeek/sixpack/g;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpack:Lcom/seatgeek/sixpack/g;

    .line 67
    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpack:Lcom/seatgeek/sixpack/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getInstance$0(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Authorization"

    const-string v2, "sixpack"

    const-string v3, "aFQiO7ZED16sFVAFYnYp2yLVZad3Obc"

    .line 48
    invoke-static {v2, v3}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$initialize$1(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->TAG:Ljava/lang/String;

    const-string v1, "ABTestManager initialized"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$prefetchTests$2(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)Lrx/d;
    .locals 1

    .prologue
    .line 80
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->prefetch()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prefetchTests$3(Ljava/util/List;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method private prefetchTests()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->tests:Ljava/util/Set;

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    .line 79
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private registerControlTests()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->controlTests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->controlTests:Ljava/util/Set;

    new-instance v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/ControlABTest;

    const-string v2, "search-result"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ControlABTest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method private registerTests()V
    .locals 8

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->tests:Ljava/util/Set;

    new-instance v1, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->sixpack:Lcom/seatgeek/sixpack/g;

    invoke-virtual {v2}, Lcom/seatgeek/sixpack/g;->a()Lcom/seatgeek/sixpack/d;

    move-result-object v2

    const-string v3, "search-result"

    .line 71
    invoke-virtual {v2, v3}, Lcom/seatgeek/sixpack/d;->a(Ljava/lang/String;)Lcom/seatgeek/sixpack/d;

    move-result-object v2

    new-instance v3, Lcom/seatgeek/sixpack/a;

    const-string v4, "followed_stores"

    invoke-direct {v3, v4}, Lcom/seatgeek/sixpack/a;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/seatgeek/sixpack/a;

    const/4 v5, 0x0

    new-instance v6, Lcom/seatgeek/sixpack/a;

    const-string v7, "all_stores"

    invoke-direct {v6, v7}, Lcom/seatgeek/sixpack/a;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 72
    invoke-virtual {v2, v3, v4}, Lcom/seatgeek/sixpack/d;->a(Lcom/seatgeek/sixpack/a;[Lcom/seatgeek/sixpack/a;)Lcom/seatgeek/sixpack/d;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/seatgeek/sixpack/d;->a()Lcom/seatgeek/sixpack/c;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabAlternativeParser;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabAlternativeParser;-><init>()V

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/abtesting/SixpackABTest;-><init>(Lcom/seatgeek/sixpack/c;Lcm/aptoide/pt/v8engine/analytics/abtesting/AlternativeParser;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->tests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    .line 87
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AB test for name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->getControl(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize() called with: clientId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->initializeSixpack(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->registerTests()V

    .line 58
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->prefetchTests()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
