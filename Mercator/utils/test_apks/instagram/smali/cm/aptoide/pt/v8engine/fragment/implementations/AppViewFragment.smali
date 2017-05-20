.class public Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "AppViewFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/AppMenuOptions;
.implements Lcm/aptoide/pt/v8engine/interfaces/Payments;
.implements Lcm/aptoide/pt/v8engine/interfaces/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;,
        Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;,
        Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">;",
        "Lcm/aptoide/pt/v8engine/interfaces/AppMenuOptions;",
        "Lcm/aptoide/pt/v8engine/interfaces/Payments;",
        "Lcm/aptoide/pt/v8engine/interfaces/Scrollable;"
    }
.end annotation


# static fields
.field private static final BAR_EXPANDED:Ljava/lang/String; = "BAR_EXPANDED"

.field private static final PAY_APP_REQUEST_CODE:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field public static final VIEW_ID:I


# instance fields
.field private adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

.field private app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private appAction:Lcm/aptoide/pt/database/AppAction;

.field private appId:J

.field private appName:Ljava/lang/String;

.field private appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

.field private currency:Ljava/lang/String;

.field private getApp:Lcm/aptoide/pt/model/v7/GetApp;

.field private header:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

.field private installDisplayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

.field private final key_appId:Ljava/lang/String;

.field private final key_md5sum:Ljava/lang/String;

.field private final key_packageName:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private menu:Landroid/view/Menu;

.field private minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

.field private openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

.field private packageName:Ljava/lang/String;

.field private permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

.field private priceValue:F

.field private productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

.field private scheduled:Lcm/aptoide/pt/database/realm/Scheduled;

.field private sponsored:Z

.field private storeName:Ljava/lang/String;

.field private storeTheme:Ljava/lang/String;

.field private subscription:Lrx/k;

.field private suggestedAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation
.end field

.field private taxRate:D

.field private unInstallAction:Lrx/b/a;

.field private uninstallMenuItem:Landroid/view/MenuItem;

.field private wUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_app_view:I

    sput v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->VIEW_ID:I

    .line 118
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 122
    const-string v0, "appId"

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->key_appId:Ljava/lang/String;

    .line 123
    const-string v0, "packageName"

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->key_packageName:Ljava/lang/String;

    .line 124
    const-string v0, "md5sum"

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->key_md5sum:Ljava/lang/String;

    .line 161
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->OPEN:Lcm/aptoide/pt/database/AppAction;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appAction:Lcm/aptoide/pt/database/AppAction;

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installDisplayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    return-object v0
.end method

.method private handleAdsLogic(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 1

    .prologue
    .line 564
    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->knockCpc(Lcm/aptoide/pt/model/MinimalAdInterface;)V

    .line 565
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/MinimalAd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$LTV;->cpi(Ljava/lang/String;)V

    .line 566
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/database/realm/MinimalAd;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method

.method private hasDescription(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMediaAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 706
    if-eqz p1, :cond_1

    .line 707
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getScreenshots()Ljava/util/List;

    move-result-object v2

    .line 708
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getVideos()Ljava/util/List;

    move-result-object v4

    .line 709
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v3, v1

    .line 710
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v1

    .line 711
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 713
    :cond_1
    return v0

    :cond_2
    move v3, v0

    .line 709
    goto :goto_0

    :cond_3
    move v2, v0

    .line 710
    goto :goto_1
.end method

.method static synthetic lambda$handleAdsLogic$27(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 2

    .prologue
    .line 567
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->extractReferrer(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)V

    return-void
.end method

.method static synthetic lambda$manageOrganicAds$18(Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/database/realm/MinimalAd;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 489
    return-object p0
.end method

.method static synthetic lambda$manageOrganicAds$19(Lcm/aptoide/pt/model/v7/GetApp;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 489
    return-object p0
.end method

.method static synthetic lambda$null$2(Lcm/aptoide/pt/model/v7/GetApp;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 291
    return-object p0
.end method

.method static synthetic lambda$null$22(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method static synthetic lambda$null$23(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 529
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$8(Lcm/aptoide/pt/model/v7/GetApp;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 301
    return-object p0
.end method

.method static synthetic lambda$setupAppView$26(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 535
    return-void
.end method

.method static synthetic lambda$setupObservables$29(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 660
    return-object p0
.end method

.method static synthetic lambda$setupObservables$30(JLcm/aptoide/pt/database/realm/Store;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 661
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageOrganicAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    .line 485
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromAppView(Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->handleAdsLogic(Lcm/aptoide/pt/database/realm/MinimalAd;)V

    .line 492
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method private manageSuggestedAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getKeywords()Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-virtual {v2, v1, v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromAppviewSuggested(Ljava/lang/String;Ljava/util/List;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 177
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;-><init>()V

    .line 181
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 182
    return-object v1
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;-><init>()V

    .line 193
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 194
    return-object v1
.end method

.method public static newInstance(Lcm/aptoide/pt/database/realm/MinimalAd;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MINIMAL_AD:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;-><init>()V

    .line 204
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 206
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MD5:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;-><init>()V

    .line 170
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 220
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;-><init>()V

    .line 222
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 223
    return-object v1
.end method

.method private setupAppView(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 507
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    .line 508
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->updateLocalVars(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 509
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installAction()Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 515
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$21;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$22;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 516
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 537
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->setup(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 538
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupDisplayables(Lcm/aptoide/pt/model/v7/GetApp;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 539
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupObservables(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 540
    invoke-direct {p0, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->showHideOptionsMenu(Z)V

    .line 541
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupShare(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 542
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    if-ne v0, v1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->installapp_alrt:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 546
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)V

    .line 547
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/j;)Lrx/k;

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->finishLoading()V

    .line 561
    return-void
.end method

.method private setupObservables(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 4

    .prologue
    .line 646
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v2

    .line 658
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 659
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->getAll()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$25;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 660
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {v2, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;->lambdaFactory$(J)Lrx/b/e;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 662
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 663
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$27;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 678
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    .line 679
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->getAll()Lrx/d;

    move-result-object v0

    .line 680
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 681
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$28;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 687
    return-void
.end method

.method private shareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->share:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericShareDialog(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$16;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->shareDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 471
    if-eqz p3, :cond_0

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->install:I

    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->share:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 479
    :cond_0
    return-void
.end method

.method private showHideOptionsMenu(Z)V
    .locals 2

    .prologue
    .line 690
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->menu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->menu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 692
    invoke-virtual {p0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->showHideOptionsMenu(Landroid/view/MenuItem;Z)V

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    return-void
.end method

.method private updateLocalVars(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    .line 572
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeName:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    .line 576
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appName:Ljava/lang/String;

    .line 577
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 262
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setHasOptionsMenu(Z)V

    .line 264
    return-void
.end method

.method public buyApp(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/v8engine/payment/ProductFactory;->create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->getIntent(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 257
    sget v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->VIEW_ID:I

    return v0
.end method

.method public installAction()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/AppAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 581
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->getAsList(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$24;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public itemAdded(I)V
    .locals 3

    .prologue
    .line 743
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$h;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 744
    return-void
.end method

.method public itemChanged(I)V
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$h;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 752
    return-void
.end method

.method public itemRemoved(I)V
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$h;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 748
    return-void
.end method

.method synthetic lambda$installAction$28(Ljava/util/List;)Lcm/aptoide/pt/database/AppAction;
    .locals 3

    .prologue
    .line 582
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 583
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 584
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 586
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->OPEN:Lcm/aptoide/pt/database/AppAction;

    .line 596
    :goto_0
    return-object v0

    .line 587
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v0

    if-le v1, v0, :cond_1

    .line 589
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->UPDATE:Lcm/aptoide/pt/database/AppAction;

    goto :goto_0

    .line 592
    :cond_1
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->DOWNGRADE:Lcm/aptoide/pt/database/AppAction;

    goto :goto_0

    .line 596
    :cond_2
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->INSTALL:Lcm/aptoide/pt/database/AppAction;

    goto :goto_0
.end method

.method synthetic lambda$load$0(Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getApp:Lcm/aptoide/pt/model/v7/GetApp;

    return-object p1
.end method

.method synthetic lambda$load$1(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->manageOrganicAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$10(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupAppView(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 306
    return-void
.end method

.method synthetic lambda$load$11(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->finishLoading(Ljava/lang/Throwable;)V

    .line 308
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "appId"

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "md5sum"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method synthetic lambda$load$12(Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getApp:Lcm/aptoide/pt/model/v7/GetApp;

    return-object p1
.end method

.method synthetic lambda$load$13(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->manageOrganicAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$14(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupAppView(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 321
    return-void
.end method

.method synthetic lambda$load$15(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->finishLoading(Ljava/lang/Throwable;)V

    .line 323
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "appId"

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "md5sum"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method synthetic lambda$load$3(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->manageSuggestedAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$34;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$4(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setupAppView(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 296
    return-void
.end method

.method synthetic lambda$load$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->finishLoading(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$load$6(Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getApp:Lcm/aptoide/pt/model/v7/GetApp;

    return-object p1
.end method

.method synthetic lambda$load$7(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->manageOrganicAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$9(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;
    .locals 2

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->manageSuggestedAds(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$33;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$manageOrganicAds$17(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 1

    .prologue
    .line 487
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 488
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->handleAdsLogic(Lcm/aptoide/pt/database/realm/MinimalAd;)V

    .line 489
    return-void
.end method

.method synthetic lambda$manageSuggestedAds$20(Lcm/aptoide/pt/model/v7/GetApp;Ljava/util/List;)Lcm/aptoide/pt/model/v7/GetApp;
    .locals 0

    .prologue
    .line 501
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->suggestedAds:Ljava/util/List;

    .line 502
    return-object p1
.end method

.method synthetic lambda$null$21(Ljava/lang/Void;)Lrx/d;
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    .line 526
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/InstallManager;->uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$24()V
    .locals 3

    .prologue
    .line 523
    new-instance v1, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v1}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    .line 524
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 523
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 527
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$31;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$32;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 528
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 523
    return-void
.end method

.method synthetic lambda$setupAppView$25(Lcm/aptoide/pt/database/AppAction;)V
    .locals 2

    .prologue
    .line 517
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appAction:Lcm/aptoide/pt/database/AppAction;

    .line 518
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->menu:Landroid/view/Menu;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_schedule:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 519
    if-eqz v1, :cond_0

    .line 520
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->OPEN:Lcm/aptoide/pt/database/AppAction;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->showHideOptionsMenu(Landroid/view/MenuItem;Z)V

    .line 522
    :cond_0
    sget-object v0, Lcm/aptoide/pt/database/AppAction;->INSTALL:Lcm/aptoide/pt/database/AppAction;

    if-eq p1, v0, :cond_2

    .line 523
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$29;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setUnInstallMenuOptionVisible(Lrx/b/a;)V

    .line 533
    :goto_1
    return-void

    .line 520
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->setUnInstallMenuOptionVisible(Lrx/b/a;)V

    goto :goto_1
.end method

.method synthetic lambda$setupObservables$31(Lcm/aptoide/pt/database/realm/Store;)V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 666
    return-void
.end method

.method synthetic lambda$setupObservables$32(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 684
    return-void
.end method

.method synthetic lambda$shareApp$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 7

    .prologue
    .line 446
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_EXTERNAL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-ne v0, p4, :cond_1

    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->shareDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_TIMELINE:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-ne v0, p4, :cond_0

    .line 450
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getShowPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isCreateStoreAndSetUserPrivacyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    .line 456
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {v0, v1, p1, v2}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getCustomRecommendationPreviewDialogBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/a/d$a;

    move-result-object v5

    .line 457
    new-instance v6, Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-direct {v6}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;-><init>()V

    .line 459
    const-string v2, "app"

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p2

    move-object v4, v0

    invoke-virtual/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->showShareCardPreviewDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    goto :goto_0
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->subscription:Lrx/k;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->subscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 286
    :cond_0
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 287
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "loading app info using app ID"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    iget-boolean v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->sponsored:Z

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeName:Ljava/lang/String;

    iget-object v7, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getApp(JZZLjava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 292
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 293
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->subscription:Lrx/k;

    .line 328
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->sponsored:Z

    invoke-virtual {v0, v1, p2, v2}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getAppFromMd5(Ljava/lang/String;ZZ)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 302
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 303
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->subscription:Lrx/k;

    goto :goto_0

    .line 313
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "loading app info using app package name"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->sponsored:Z

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getApp(Ljava/lang/String;ZZLjava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 317
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 318
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/b;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->subscription:Lrx/k;

    goto/16 :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 241
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->APP_ID:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    .line 242
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->PACKAGE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    .line 243
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MD5:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->md5:Ljava/lang/String;

    .line 244
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 245
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    if-nez v0, :cond_0

    .line 246
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 250
    :goto_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->MINIMAL_AD:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 251
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->STORE_NAME:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeName:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->sponsored:Z

    .line 253
    const-string v0, "storeTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    .line 254
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->SHOULD_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$BundleKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 354
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 355
    if-ne p2, v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "APP_BOUGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    const-string v2, "appId"

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    const-string v2, "APP_PATH"

    const-string v3, "INAPP_PURCHASE_DATA"

    .line 362
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    :goto_0
    return-void

    .line 364
    :cond_0
    if-nez p2, :cond_2

    .line 366
    if-eqz p3, :cond_1

    const-string v0, "RESPONSE_CODE"

    .line 367
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const-string v1, "RESPONSE_CODE"

    .line 368
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 370
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v3, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->load(ZZLandroid/os/Bundle;)V

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "The user canceled."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->user_cancelled:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0

    .line 377
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "An invalid Payment or PayPalConfiguration was submitted. Please see the docs."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->header:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    new-instance v0, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v0}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    .line 229
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    .line 230
    new-instance v1, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 232
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/payment/ProductFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    .line 233
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/AppRepository;

    new-instance v2, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 234
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;-><init>(Landroid/telephony/TelephonyManager;)V

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/repository/AppRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    .line 235
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    .line 236
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    .line 237
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 388
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->menu:Landroid/view/Menu;

    .line 389
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_appview_fragment:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 390
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupGlobalSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;)V

    .line 391
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->menu_uninstall:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->uninstallMenuItem:Landroid/view/MenuItem;

    .line 392
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onDestroyView()V

    .line 269
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 271
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 395
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 397
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 398
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 400
    :cond_0
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_share:I

    if-ne v0, v2, :cond_1

    .line 401
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appName:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->wUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->shareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 402
    goto :goto_0

    .line 403
    :cond_1
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_schedule:I

    if-ne v0, v2, :cond_2

    .line 405
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appAction:Lcm/aptoide/pt/database/AppAction;

    invoke-static {v0, v2}, Lcm/aptoide/pt/database/realm/Scheduled;->from(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/database/AppAction;)Lcm/aptoide/pt/database/realm/Scheduled;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->scheduled:Lcm/aptoide/pt/database/realm/Scheduled;

    .line 412
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    .line 413
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->scheduled:Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->insert(Lio/realm/ad;)V

    .line 415
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->added_to_scheduled:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :cond_2
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_uninstall:I

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->unInstallAction:Lrx/b/a;

    if-eqz v2, :cond_3

    .line 419
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->unInstallAction:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    move v0, v1

    .line 420
    goto :goto_0

    .line 421
    :cond_3
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_remote_install:I

    if-ne v0, v1, :cond_4

    .line 422
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->remote_install_menu_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->install_on_tv_mobile_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 433
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 427
    :cond_5
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appId:J

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->newInstance(J)Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    .line 429
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onPause()V

    .line 342
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onResume()V

    .line 335
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public scroll(Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;)V
    .locals 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 731
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Recycler view is null or there are no elements in the adapter"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    sget-object v1, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->FIRST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    if-ne p1, v1, :cond_3

    .line 736
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_0

    .line 737
    :cond_3
    sget-object v1, Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;->LAST:Lcm/aptoide/pt/v8engine/interfaces/Scrollable$Position;

    if-ne p1, v1, :cond_1

    .line 738
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_0
.end method

.method public setUnInstallMenuOptionVisible(Lrx/b/a;)V
    .locals 2

    .prologue
    .line 608
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->unInstallAction:Lrx/b/a;

    .line 609
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->uninstallMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->showHideOptionsMenu(Landroid/view/MenuItem;Z)V

    .line 610
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupDisplayables(Lcm/aptoide/pt/model/v7/GetApp;)Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 615
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    .line 616
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v3

    .line 618
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    sget-object v4, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    .line 619
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->openType:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 620
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    .line 621
    invoke-static {p1, v4, v5, v0, v6}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->newInstance(Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/database/realm/MinimalAd;ZLcm/aptoide/pt/v8engine/repository/InstalledRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installDisplayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    .line 623
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->installDisplayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewStoreDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-direct {p0, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->isMediaAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;

    invoke-direct {v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDescriptionDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDescriptionDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->suggestedAds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 635
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppsDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->suggestedAds:Ljava/util/List;

    invoke-direct {v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppsDisplayable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 639
    return-object v1

    .line 618
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupShare(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->appName:Ljava/lang/String;

    .line 702
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getUrls()Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Urls;->getW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->wUrl:Ljava/lang/String;

    .line 703
    return-void
.end method

.method protected setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 721
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 722
    return-void
.end method

.method protected showHideOptionsMenu(Landroid/view/MenuItem;Z)V
    .locals 0

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 605
    :cond_0
    return-void
.end method
