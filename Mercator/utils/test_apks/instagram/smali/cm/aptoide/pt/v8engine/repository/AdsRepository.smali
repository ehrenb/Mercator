.class public Lcm/aptoide/pt/v8engine/repository/AdsRepository;
.super Ljava/lang/Object;
.source "AdsRepository.java"


# instance fields
.field private adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

.field private aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

.field private partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 39
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 42
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 44
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$3;->lambdaFactory$()Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    .line 45
    return-void
.end method

.method static synthetic lambda$mapToMinimalAd$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->validAds(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ads returned from server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$mapToMinimalAds$2(Lcm/aptoide/pt/model/v2/GetAdsResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->validAds(Lcm/aptoide/pt/model/v2/GetAdsResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ads returned from server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$mapToMinimalAds$3(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 86
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    .line 88
    invoke-static {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->from(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mapToMinimalAd(Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v2/GetAdsResponse;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private mapToMinimalAds(Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v2/GetAdsResponse;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/AdsRepository$$Lambda$9;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static validAds(Lcm/aptoide/pt/model/v2/GetAdsResponse;)Z
    .locals 1

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->validAds(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validAds(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAdsFromAppView(Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 49
    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 50
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 51
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v5

    move-object v0, p1

    move-object v1, p2

    .line 48
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofAppviewOrganic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAd(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromAppviewSuggested(Ljava/lang/String;Ljava/util/List;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 101
    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 102
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 103
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v5

    move-object v0, p2

    move-object v3, p1

    .line 101
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofAppviewSuggested(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAds(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromHomepageMore()Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 74
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 75
    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v3}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v3

    .line 73
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofHomepageMore(Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAds(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromSearch(Ljava/lang/String;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 108
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 109
    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v3}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v3

    .line 107
    invoke-static {p1, v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofSearch(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAd(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromSecondInstall(Ljava/lang/String;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 114
    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 115
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 116
    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v3}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v3

    .line 114
    invoke-static {p1, v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofSecondInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAd(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromSecondTry(Ljava/lang/String;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 121
    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->googlePlayServicesAvailabilityChecker:Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;

    .line 122
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/interfaces/GooglePlayServicesAvailabilityChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->partnerIdProvider:Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;

    .line 123
    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/interfaces/PartnerIdProvider;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->adultSwitchStatus:Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;

    invoke-interface {v3}, Lcm/aptoide/pt/v8engine/interfaces/AdultSwitchStatus;->isAdultSwitchActive()Z

    move-result v3

    .line 121
    invoke-static {p1, v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->ofSecondTry(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/GetAdsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->mapToMinimalAd(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
