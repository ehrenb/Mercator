.class public Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;
.source "GetAdsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords",
        "<",
        "Lcm/aptoide/pt/model/v2/GetAdsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final client:Lokhttp3/OkHttpClient;

.field private static forcedCountry:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Ljava/lang/String;

.field private categories:Ljava/lang/String;

.field private excludedNetworks:Ljava/lang/String;

.field private excludedPackage:Ljava/lang/String;

.field private final googlePlayServicesAvailable:Z

.field private keyword:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private location:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

.field private mature:Z

.field private final oemid:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private repo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v0

    .line 36
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isDebug()Z

    move-result v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->client:Lokhttp3/OkHttpClient;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->forcedCountry:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->client:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;-><init>(Lokhttp3/OkHttpClient;)V

    .line 54
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->aptoideClientUUID:Ljava/lang/String;

    .line 55
    iput-boolean p2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->googlePlayServicesAvailable:Z

    .line 56
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->oemid:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->mature:Z

    .line 58
    return-void
.end method

.method private getExcludedPackages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getForcedCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->forcedCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$loadDataFromNetwork$0(Lcm/aptoide/pt/model/v2/GetAdsResponse;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    .line 190
    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->knockImpression(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private static of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 7

    .prologue
    .line 69
    const-string v1, "__NULL__"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    invoke-direct {v0, p3, p4, p5, p6}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 76
    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setLocation(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setKeyword(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setLimit(Ljava/lang/Integer;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofAppviewOrganic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 88
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->appview:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 89
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofPackageName(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setRepo(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    .line 94
    return-object v0
.end method

.method public static ofAppviewSuggested(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->middleappview:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    const/4 v1, 0x3

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setExcludedPackage(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    .line 120
    invoke-static {p0, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__null__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setKeyword(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    .line 122
    return-object v0
.end method

.method public static ofFirstInstall(Ljava/lang/String;ZLjava/lang/String;IZ)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 145
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->firstinstall:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofHomepage(Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 63
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->homepage:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->ADS:Lcm/aptoide/pt/model/v7/Type;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofHomepageMore(Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 82
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->homepage:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method private static ofPackageName(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->setPackageName(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v1

    .line 104
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;->excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;->excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    .line 106
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->commaSeparatedValues(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedNetworks:Ljava/lang/String;

    .line 109
    :cond_0
    return-object v1
.end method

.method public static ofSearch(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 7

    .prologue
    .line 127
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->search:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofSecondInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 133
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->secondinstall:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofPackageName(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofSecondTry(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 6

    .prologue
    .line 139
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->secondtry:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofPackageName(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static setForcedCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->forcedCountry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isGooglePlayServicesAvailable()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isGooglePlayServicesAvailable()Z

    move-result v4

    if-eq v3, v4, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getOemid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getOemid()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_c

    if-eqz v4, :cond_d

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLocation()Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLocation()Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-result-object v4

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    :cond_e
    move v0, v2

    goto :goto_0

    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getKeyword()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_12

    if-eqz v4, :cond_13

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v3, :cond_15

    if-eqz v4, :cond_16

    :cond_14
    move v0, v2

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_18

    if-eqz v4, :cond_19

    :cond_17
    move v0, v2

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getRepo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getRepo()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1b

    if-eqz v4, :cond_1c

    :cond_1a
    move v0, v2

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1d
    move v0, v2

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1f
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedNetworks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedNetworks()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_21

    if-eqz v4, :cond_22

    :cond_20
    move v0, v2

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_22
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isMature()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isMature()Z

    move-result v0

    if-eq v3, v0, :cond_23

    move v0, v2

    goto/16 :goto_0

    :cond_23
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAptoideClientUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->aptoideClientUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludedNetworks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedNetworks:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludedPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocation()Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->location:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    return-object v0
.end method

.method public getOemid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->oemid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->repo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x4f

    const/16 v1, 0x2b

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v5

    mul-int/lit8 v4, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getOemid()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedPackage()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLocation()Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getKeyword()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getRepo()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedNetworks()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v0, v0, 0x3b

    if-nez v4, :cond_a

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isMature()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_b
    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_b
    move v2, v3

    goto :goto_b
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->googlePlayServicesAvailable:Z

    return v0
.end method

.method public isMature()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->mature:Z

    return v0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v2/GetAdsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 154
    const-string v0, "q"

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "lang"

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "cpuid"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->aptoideClientUUID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "aptvercode"

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->getVerCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "location"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->location:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "type"

    const-string v2, "1-3"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "partners"

    const-string v2, "1-3,5-10"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "keywords"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "oem_id"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->oemid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "country"

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->forcedCountry:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "country"

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->googlePlayServicesAvailable:Z

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "flag"

    const-string v2, "gms"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    const-string v0, "excluded_pkg"

    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedPackages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "limit"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->limit:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "get_mature"

    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->mature:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "app_pkg"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "app_store"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->repo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "filter_pkg"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "conn_type"

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "excluded_partners"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedNetworks:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {p1, v1}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;->getAds(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 196
    return-object v0

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setCategories(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->categories:Ljava/lang/String;

    return-object p0
.end method

.method public setExcludedNetworks(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedNetworks:Ljava/lang/String;

    return-object p0
.end method

.method public setExcludedPackage(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->excludedPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public setLimit(Ljava/lang/Integer;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLocation(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->location:Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    return-object p0
.end method

.method public setMature(Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->mature:Z

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRepo(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->repo:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdsRequest(aptoideClientUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", googlePlayServicesAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isGooglePlayServicesAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oemid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getOemid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excludedPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLocation()Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excludedNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->getExcludedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->isMature()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
