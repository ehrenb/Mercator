.class public Lcm/aptoide/pt/v8engine/repository/AppRepository;
.super Ljava/lang/Object;
.source "AppRepository.java"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 34
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 36
    return-void
.end method

.method private addPayment(ZLcm/aptoide/pt/model/v7/GetApp;Z)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    .line 66
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v4, p1

    move v6, p3

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getPaidApp(JZLjava/lang/String;Z)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addPayment$1(Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v3/PaidApp;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Path;->getStringPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->setPath(Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->setPrice(Ljava/lang/Number;)V

    .line 78
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->setSymbol(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->setStatus(Ljava/lang/String;)V

    .line 80
    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getMetadata()Lcm/aptoide/pt/model/v3/PaidApp$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/PaidApp$Metadata;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->setProductId(I)V

    goto :goto_0
.end method

.method static synthetic lambda$addPayment$2(Lcm/aptoide/pt/model/v7/GetApp;Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 82
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getPaidApp$3(JLjava/lang/String;Lcm/aptoide/pt/model/v3/PaidApp;)Lrx/d;
    .locals 4

    .prologue
    .line 93
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v3/PaidApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v3/PaidApp;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p3}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No paid app found for app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getApp(JZZLjava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .line 45
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-static {p5}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 47
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    move-wide v0, p1

    move-object v6, p6

    .line 44
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->of(JLjava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p4, p3, p1, p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZJ)Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, p5

    .line 45
    goto :goto_0
.end method

.method public getApp(Ljava/lang/String;ZZLjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 106
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {p1, p4, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p3, p2, p1}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAppFromMd5(Ljava/lang/String;ZZ)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 122
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->ofMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p3, p2, p1}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/AppRepository;ZZLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getPaidApp(JZLjava/lang/String;Z)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/PaidApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AppRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 92
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    move-wide v0, p1

    move v3, p3

    move-object v4, p4

    .line 91
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v3/GetApkInfoRequest;->of(JLcm/aptoide/pt/dataprovider/NetworkOperatorManager;ZLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetApkInfoRequest;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p5}, Lcm/aptoide/pt/dataprovider/ws/v3/GetApkInfoRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lcm/aptoide/pt/v8engine/repository/AppRepository$$Lambda$4;->lambdaFactory$(JLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getApp$0(ZZJLcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 3

    .prologue
    .line 51
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcm/aptoide/pt/model/v7/GetApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1, p5, p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->addPayment(ZLcm/aptoide/pt/model/v7/GetApp;Z)Lrx/d;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-static {p5}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app found for app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getApp$4(ZZLjava/lang/String;Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 3

    .prologue
    .line 107
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/GetApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1, p4, p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->addPayment(ZLcm/aptoide/pt/model/v7/GetApp;Z)Lrx/d;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-static {p4}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app found for app package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getAppFromMd5$5(ZZLjava/lang/String;Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 3

    .prologue
    .line 123
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/GetApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1, p4, p2}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->addPayment(ZLcm/aptoide/pt/model/v7/GetApp;Z)Lrx/d;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {p4}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app found for app md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
