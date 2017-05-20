.class Lcom/localytics/android/InboxWebViewController;
.super Ljava/lang/Object;
.source "InboxWebViewController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;
    }
.end annotation


# static fields
.field static final ARG_CAMPAIGN:Ljava/lang/String; = "arg_campaign"

.field private static final NUM_CREATIVE_LOAD_TRIES:I = 0x3

.field private static final RETRY_TIMEOUT:J = 0x3e8L


# instance fields
.field private mActivityCallback:Lcom/localytics/android/InboxDetailCallback;

.field private mCampaign:Lcom/localytics/android/InboxCampaign;

.field private mErrorImage:Lcom/localytics/android/InboxErrorImage;

.field private mIsAttached:Z

.field private mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

.field private mMessageHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Lcom/localytics/android/MarketingWebView;

.field private mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxWebViewController;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/localytics/android/InboxWebViewController;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxWebViewController;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/localytics/android/InboxWebViewController;->creativePathExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/localytics/android/InboxWebViewController;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/InboxWebViewController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/InboxWebViewController;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxWebViewController;->loadCreative(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/localytics/android/InboxWebViewController;)Lcom/localytics/android/JavaScriptClient;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    return-object v0
.end method

.method private creativePathExists()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "html_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private loadCreative(I)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "html_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/localytics/android/InboxWebViewController;->creativePathExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mMessageHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    :goto_0
    return-void

    .line 201
    :cond_0
    if-lez p1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    new-instance v2, Lcom/localytics/android/InboxWebViewController$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/localytics/android/InboxWebViewController$2;-><init>(Lcom/localytics/android/InboxWebViewController;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/localytics/android/Localytics;->priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/localytics/android/InboxWebViewController;->showError()V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/localytics/android/InboxWebViewController;->showError()V

    goto :goto_0
.end method

.method private onCreate(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    if-eqz p2, :cond_0

    const-string v0, "arg_campaign"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InboxCampaign;

    iput-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must use InboxDetailFragment.newInstance(InboxCampaign campaign) and use FragmentManager to add it to your layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setCampaign(Lcom/localytics/android/WebViewCampaign;)V

    .line 100
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->getJavaScriptClient(Ljava/util/Map;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    .line 101
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/localytics/android/Localytics;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mMessageHandler:Landroid/os/Handler;

    .line 104
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setMessageHandler(Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method private onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x8

    const/4 v5, -0x2

    const/16 v4, 0x11

    const/4 v2, -0x1

    .line 125
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 132
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    new-instance v2, Lcom/localytics/android/MarketingWebView;

    invoke-direct {v2, p1, v1}, Lcom/localytics/android/MarketingWebView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v2, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    .line 139
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    new-instance v2, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;

    iget-object v3, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {v2, p0, v3}, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;-><init>(Lcom/localytics/android/InboxWebViewController;Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 141
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    iget-object v2, p0, Lcom/localytics/android/InboxWebViewController;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    const-string v3, "localytics"

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/MarketingWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    new-instance v2, Lcom/localytics/android/InboxWebViewController$1;

    invoke-direct {v2, p0}, Lcom/localytics/android/InboxWebViewController$1;-><init>(Lcom/localytics/android/InboxWebViewController;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 168
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    iget-object v2, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v1, Lcom/localytics/android/InboxErrorImage;

    invoke-direct {v1, p1}, Lcom/localytics/android/InboxErrorImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mErrorImage:Lcom/localytics/android/InboxErrorImage;

    .line 178
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7, p1}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v2

    invoke-static {v7, p1}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    iget-object v2, p0, Lcom/localytics/android/InboxWebViewController;->mErrorImage:Lcom/localytics/android/InboxErrorImage;

    invoke-virtual {v2, v1}, Lcom/localytics/android/InboxErrorImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mErrorImage:Lcom/localytics/android/InboxErrorImage;

    invoke-virtual {v1, v6}, Lcom/localytics/android/InboxErrorImage;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mErrorImage:Lcom/localytics/android/InboxErrorImage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 187
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/localytics/android/InboxWebViewController;->loadCreative(I)V

    .line 189
    return-object v0
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mActivityCallback:Lcom/localytics/android/InboxDetailCallback;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mActivityCallback:Lcom/localytics/android/InboxDetailCallback;

    invoke-interface {v0}, Lcom/localytics/android/InboxDetailCallback;->onCreativeLoadError()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mErrorImage:Lcom/localytics/android/InboxErrorImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxErrorImage;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method getCampaign()Lcom/localytics/android/InboxCampaign;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mCampaign:Lcom/localytics/android/InboxCampaign;

    return-object v0
.end method

.method getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 274
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return v5

    .line 277
    :pswitch_0
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mWebView:Lcom/localytics/android/MarketingWebView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "Main handler can\'t handle message %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager;

    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingWebViewManager;->setContext(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/InboxWebViewController;->mIsAttached:Z

    .line 65
    instance-of v0, p1, Lcom/localytics/android/InboxDetailCallback;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lcom/localytics/android/InboxDetailCallback;

    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController;->mActivityCallback:Lcom/localytics/android/InboxDetailCallback;

    .line 69
    :cond_1
    return-void
.end method

.method onCreate(Lcom/localytics/android/InboxDetailFragment;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/localytics/android/InboxDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/InboxWebViewController;->onCreate(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/localytics/android/InboxDetailFragment;->setRetainInstance(Z)V

    .line 83
    return-void
.end method

.method onCreate(Lcom/localytics/android/InboxDetailSupportFragment;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/localytics/android/InboxDetailSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/InboxWebViewController;->onCreate(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/localytics/android/InboxDetailSupportFragment;->setRetainInstance(Z)V

    .line 89
    return-void
.end method

.method onCreateView(Landroid/support/v4/app/Fragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InboxWebViewController;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onCreateView(Lcom/localytics/android/InboxDetailFragment;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/localytics/android/InboxDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InboxWebViewController;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDestroy(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/localytics/android/Localytics;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 110
    return-void
.end method

.method onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setContext(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/InboxWebViewController;->mIsAttached:Z

    .line 75
    iput-object v1, p0, Lcom/localytics/android/InboxWebViewController;->mActivityCallback:Lcom/localytics/android/InboxDetailCallback;

    .line 76
    return-void
.end method
