.class final Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;
.super Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
.source "InAppDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InAppWebViewClient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;Lcom/localytics/android/MarketingWebViewManager;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    .line 437
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    .line 438
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v0, v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign;->getDisplayLocation()Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    .line 446
    :goto_0
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v0

    .line 447
    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v0, v3, v0

    .line 448
    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$300(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F

    move-result v3

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    .line 449
    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mHeight:F
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$400(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F

    move-result v3

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    .line 452
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v4, v4, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v4}, Lcom/localytics/android/InAppDialogFragment;->access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/localytics/android/JavaScriptClient;->getViewportAdjuster(FF)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v2, ";"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v2, v2, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment;->access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/localytics/android/JavaScriptClient;->getJavaScriptBridge()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v0, v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$700(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->enterWithAnimation()V

    .line 465
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 445
    goto/16 :goto_0
.end method
