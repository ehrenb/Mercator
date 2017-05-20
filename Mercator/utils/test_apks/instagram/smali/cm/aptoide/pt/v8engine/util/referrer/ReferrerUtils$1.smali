.class final Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;
.super Landroid/webkit/WebViewClient;
.source "ReferrerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->extractReferrer(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$broadcastReferrer:Z

.field final synthetic val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

.field final synthetic val$networkId:J

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$retries:I


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcm/aptoide/pt/database/realm/MinimalAd;IJ)V
    .locals 1

    .prologue
    .line 105
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$broadcastReferrer:Z

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    iput p4, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$retries:I

    iput-wide p5, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$networkId:J

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/Throwable;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$null$1(Lcm/aptoide/pt/database/realm/MinimalAd;Lcm/aptoide/pt/database/realm/MinimalAd;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$2(IZLcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 1

    .prologue
    .line 186
    add-int/lit8 v0, p0, -0x1

    invoke-static {p2, v0, p1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->extractReferrer(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)V

    return-void
.end method

.method static synthetic lambda$null$3(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 187
    # invokes: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->clearExcludedNetworks(Ljava/lang/String;)Ljava/util/List;
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$300(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$postponeReferrerExtraction$4(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending RegisterAdRefererRequest with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/MinimalAd;->getAdId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/MinimalAd;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 171
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/MinimalAd;->getClickUrl()Ljava/lang/String;

    move-result-object v4

    move v5, p0

    .line 170
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->of(JJLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->execute()V

    .line 173
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p0, :cond_1

    .line 176
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;->excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    invoke-virtual {v0, p3, p4, p5}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;->add(Ljava/lang/String;J)V

    .line 180
    if-lez p2, :cond_0

    .line 181
    :try_start_0
    # getter for: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$200()Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromSecondTry(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 182
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/database/realm/MinimalAd;)Lrx/b/e;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2, p6}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$4;->lambdaFactory$(IZ)Lrx/b/b;

    move-result-object v1

    invoke-static {p3}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$5;->lambdaFactory$(Ljava/lang/String;)Lrx/b/b;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 202
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    # invokes: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->clearExcludedNetworks(Ljava/lang/String;)Ljava/util/List;
    invoke-static {p3}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$300(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    :cond_1
    # invokes: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->clearExcludedNetworks(Ljava/lang/String;)Ljava/util/List;
    invoke-static {p3}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$300(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method private postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;II)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "II)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;IZI)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "IZ)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;IZI)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;IZI)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "IZI)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referrer postponed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$packageName:Ljava/lang/String;

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$networkId:J

    iget-boolean v6, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$broadcastReferrer:Z

    move v0, p3

    move-object v1, p1

    move v2, p4

    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->lambdaFactory$(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 205
    # getter for: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$100()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Openened clickUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    const/4 v1, 0x5

    iget v2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$retries:I

    invoke-direct {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;II)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->future:Ljava/util/concurrent/Future;

    .line 151
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 111
    const-string v0, "ExtractReferrer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClickUrl redirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://play.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://play.google.com"

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    const-string v0, "ExtractReferrer"

    const-string v1, "Clickurl landed on market"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    # invokes: Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->getReferrer(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string v0, "ExtractReferrer"

    const-string v1, "Referrer successfully extracted"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$broadcastReferrer:Z

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->broadcastReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 136
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v7, v1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->postponeReferrerExtraction(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)Ljava/util/concurrent/ScheduledFuture;

    .line 140
    :cond_1
    return v7

    .line 128
    :cond_2
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    .line 129
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;

    .line 130
    new-instance v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 131
    invoke-virtual {v3}, Lcm/aptoide/pt/database/realm/MinimalAd;->getCpiUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->val$minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 132
    invoke-virtual {v4}, Lcm/aptoide/pt/database/realm/MinimalAd;->getAdId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 130
    invoke-virtual {v6, v0}, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;->insert(Lio/realm/ad;)V

    goto :goto_0
.end method
