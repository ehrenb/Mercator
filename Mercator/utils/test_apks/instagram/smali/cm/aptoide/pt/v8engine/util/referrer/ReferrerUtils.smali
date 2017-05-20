.class public Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;
.super Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;
.source "ReferrerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->getReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200()Lcm/aptoide/pt/v8engine/repository/AdsRepository;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->clearExcludedNetworks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static broadcastReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 239
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    :cond_0
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    sget-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with referrer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private static clearExcludedNetworks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static extractReferrer(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)V
    .locals 17

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getNetworkId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getClickUrl()Ljava/lang/String;

    move-result-object v12

    .line 58
    if-nez v12, :cond_0

    .line 59
    const-string v2, "ExtractReferrer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No click_url for packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ExtractReferrer must be run on UI thread!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 70
    :try_start_0
    const-string v2, "ExtractReferrer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    .line 73
    new-instance v15, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;

    invoke-direct {v15}, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;-><init>()V

    .line 75
    const-string v2, "window"

    .line 76
    invoke-virtual {v13, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/WindowManager;

    move-object v10, v0

    .line 78
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d6

    const/16 v6, 0x10

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 82
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 84
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 85
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-static {v14, v12, v15}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->lambdaFactory$([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v15}, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->get()Ljava/lang/Object;

    .line 100
    new-instance v12, Landroid/webkit/WebView;

    invoke-direct {v12, v13}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    new-instance v3, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;

    move/from16 v4, p2

    move-object v5, v11

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;-><init>(ZLjava/lang/String;Lcm/aptoide/pt/database/realm/MinimalAd;IJ)V

    invoke-virtual {v12, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v12, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, v16

    invoke-interface {v10, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 216
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static getReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    sget-object v1, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_0
    sget-object v1, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find any referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$extractReferrer$0([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 94
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 93
    invoke-static {p1, v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->parseMacros(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/repository/IdsRepository;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 96
    aget-object v0, p0, v3

    invoke-virtual {p2, v0}, Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;->set(Ljava/lang/Object;)V

    .line 97
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed clickUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
