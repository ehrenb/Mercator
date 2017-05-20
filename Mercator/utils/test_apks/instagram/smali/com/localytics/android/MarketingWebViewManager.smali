.class Lcom/localytics/android/MarketingWebViewManager;
.super Ljava/lang/Object;
.source "MarketingWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingWebViewManager$8;,
        Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    }
.end annotation


# static fields
.field static final MESSAGE_DISMISS:I = 0x1

.field static final MESSAGE_LOAD_URL:I = 0x2


# instance fields
.field mCampaign:Lcom/localytics/android/WebViewCampaign;

.field mContext:Landroid/content/Context;

.field final mIsMarketingActionTagged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field mMessageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mIsMarketingActionTagged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    return-void
.end method

.method private getJavaScriptCallbacks(Ljava/util/Map;)Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/MarketingCallable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 447
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "undefined"

    aput-object v2, v0, v1

    const-string v1, "null"

    aput-object v1, v0, v3

    const-string v1, "nil"

    aput-object v1, v0, v4

    const-string v1, "\"\""

    aput-object v1, v0, v5

    const-string v1, "\'\'"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 449
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 452
    new-instance v2, Lcom/localytics/android/MarketingWebViewManager$1;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/MarketingWebViewManager$1;-><init>(Lcom/localytics/android/MarketingWebViewManager;Ljava/util/List;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingWebViewManager$2;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingWebViewManager$3;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    const/4 v0, 0x6

    new-instance v2, Lcom/localytics/android/MarketingWebViewManager$4;

    invoke-direct {v2, p0, p1}, Lcom/localytics/android/MarketingWebViewManager$4;-><init>(Lcom/localytics/android/MarketingWebViewManager;Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    const/4 v0, 0x7

    new-instance v2, Lcom/localytics/android/MarketingWebViewManager$5;

    invoke-direct {v2, p0}, Lcom/localytics/android/MarketingWebViewManager$5;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$6;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingWebViewManager$6;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager$7;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingWebViewManager$7;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    return-object v1
.end method

.method private getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[&]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 405
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 407
    const-string v6, "[=]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 408
    aget-object v6, v5, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 410
    const/4 v6, 0x2

    array-length v7, v5

    if-ne v6, v7, :cond_2

    .line 414
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v5, v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getValueByQueryKey(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/MarketingWebViewManager;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 435
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCustomProtocolRequest(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 376
    const-string v1, "[Marketing Nav Handler]: An app on this device is registered to handle this protocol scheme. Opening..."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 377
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v1, v1, Lcom/localytics/android/InAppCampaign;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    :cond_1
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_EXTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_2
    const-string v0, "[Marketing Nav Handler]: Invalid url %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 392
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    goto :goto_0
.end method

.method private handleCustomProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingWebViewManager;->handleCustomProtocolRequest(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v0

    return-object v0
.end method

.method private handleFileProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 283
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingWebViewManager;->isPathWithinCreativeDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    goto :goto_0

    .line 281
    :cond_2
    const-string v0, "[Marketing Nav Handler]: Displaying content from your local creatives."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 283
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->DO_NOT_OPEN:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    goto :goto_0
.end method

.method private handleHttpProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 362
    :goto_0
    return-object v0

    .line 335
    :cond_0
    const-string v0, "[Marketing Nav Handler]: Handling a request for an external HTTP address."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 338
    const-string v0, "ampExternalOpen"

    invoke-direct {p0, v0, p1}, Lcom/localytics/android/MarketingWebViewManager;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    const-string v0, "[Marketing Nav Handler]: Query string hook [%s] set to true. Opening the URL in chrome"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "ampExternalOpen"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v1, v1, Lcom/localytics/android/InAppCampaign;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    :cond_2
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_EXTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    goto :goto_0

    .line 360
    :cond_3
    const-string v0, "[Marketing Nav Handler]: Loading HTTP request inside the current marketing view"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 362
    sget-object v0, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    goto :goto_0
.end method

.method private isPathWithinCreativeDir(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 300
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v0}, Lcom/localytics/android/WebViewCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v3, "base_path"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    .line 304
    if-eqz v2, :cond_0

    .line 306
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 314
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const/4 v0, 0x1

    .line 324
    :goto_2
    return v0

    .line 295
    :catch_0
    move-exception v1

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private tagMarketingActionForURL(Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 183
    const-string v0, "ampAction"

    invoke-direct {p0, v0, p1}, Lcom/localytics/android/MarketingWebViewManager;->getValueByQueryKey(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "Attempting to tag event with custom marketing action. [Action: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "click"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getJavaScriptClient(Ljava/util/Map;)Lcom/localytics/android/JavaScriptClient;
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingWebViewManager;->getJavaScriptCallbacks(Ljava/util/Map;)Landroid/util/SparseArray;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/localytics/android/JavaScriptClient;

    invoke-direct {v1, v0}, Lcom/localytics/android/JavaScriptClient;-><init>(Landroid/util/SparseArray;)V

    return-object v1
.end method

.method handleShouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingWebViewManager;->handleUrl(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleUrl(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 111
    const-string v0, "[Marketing Nav Handler]: Evaluating marketing URL:\n\tURL:%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    .line 114
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    .line 117
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v0}, Lcom/localytics/android/WebViewCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v3, "base_path"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    .line 129
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionForURL(Ljava/net/URI;)V

    .line 135
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v3}, Lcom/localytics/android/MarketingWebViewManager;->handleFileProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eq v0, v1, :cond_3

    .line 168
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v1, :cond_2

    .line 170
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    :cond_2
    :goto_0
    return-object v0

    .line 144
    :cond_3
    :try_start_4
    invoke-direct {p0, v3}, Lcom/localytics/android/MarketingWebViewManager;->handleHttpProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v0, v1, :cond_4

    .line 168
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v1, :cond_2

    .line 170
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 150
    :cond_4
    :try_start_5
    invoke-direct {p0, v3}, Lcom/localytics/android/MarketingWebViewManager;->handleCustomProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v0, v1, :cond_5

    .line 168
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v1, :cond_2

    .line 170
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 155
    :cond_5
    :try_start_6
    const-string v1, "[Marketing Nav Handler]: Protocol handler scheme not recognized. Attempting to load the URL... [Scheme: %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 168
    sget-object v1, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v1, :cond_2

    .line 170
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 157
    :catch_0
    move-exception v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 161
    :goto_1
    :try_start_7
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingWebViewManager;->handleCustomProtocolRequest(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v0

    sget-object v2, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->PROTOCOL_UNMATCHED:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eq v0, v2, :cond_6

    .line 168
    sget-object v2, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v2, :cond_2

    .line 170
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 168
    :cond_6
    sget-object v2, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v0, v2, :cond_2

    .line 170
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 168
    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_2
    sget-object v3, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->OPENING_INTERNAL:Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    if-ne v1, v3, :cond_7

    .line 170
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 172
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    throw v0

    .line 168
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 157
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method setCampaign(Lcom/localytics/android/WebViewCampaign;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    .line 69
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method setMessageHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager;->mMessageHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/localytics/android/MarketingWebViewManager;->handleFileProtocolRequest(Ljava/net/URL;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/localytics/android/MarketingWebViewManager$8;->$SwitchMap$com$localytics$android$MarketingWebViewManager$ProtocolHandleAction:[I

    invoke-virtual {v1}, Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;->ordinal()I

    move-result v1

    aget v1, v2, v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return v0

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    .line 96
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method tagMarketingActionEventWithAction(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 203
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mIsMarketingActionTagged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v0, v0, Lcom/localytics/android/InAppCampaign;

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "The in-app action for this message has already been set. Ignoring in-app Action: [%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v0, v0, Lcom/localytics/android/InboxCampaign;

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "The inbox action for this message has already been set. Ignoring inbox Action: [%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 229
    const-string v1, "Schema Version - Client"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v1}, Lcom/localytics/android/WebViewCampaign;->getSchemaVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 232
    const-string v1, "Schema Version - Server"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getSchemaVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v1, v1, Lcom/localytics/android/InAppCampaign;

    if-eqz v1, :cond_7

    .line 237
    const-string v1, "ampAction"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "type"

    const-string v2, "In-App"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "ampCampaignId"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getCampaignId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "ampCampaign"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getRuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v1}, Lcom/localytics/android/WebViewCampaign;->getAbTest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 243
    const-string v1, "ampAB"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getAbTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "ampView"

    invoke-interface {v1, v2, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    :cond_6
    :goto_1
    invoke-static {}, Lcom/localytics/android/Localytics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    const-string v1, " Key = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", Value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :cond_7
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    instance-of v1, v1, Lcom/localytics/android/InboxCampaign;

    if-eqz v1, :cond_6

    .line 249
    const-string v1, "Action"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "Type"

    const-string v2, "Inbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "Campaign ID"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getCampaignId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v1}, Lcom/localytics/android/WebViewCampaign;->getAbTest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 254
    const-string v1, "Creative ID"

    iget-object v2, p0, Lcom/localytics/android/MarketingWebViewManager;->mCampaign:Lcom/localytics/android/WebViewCampaign;

    invoke-virtual {v2}, Lcom/localytics/android/WebViewCampaign;->getAbTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "Localytics Inbox Message Viewed"

    invoke-interface {v1, v2, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 266
    :cond_9
    const-string v0, "Marketing event tagged successfully.\n   Attributes Dictionary = \n%s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto/16 :goto_0
.end method
