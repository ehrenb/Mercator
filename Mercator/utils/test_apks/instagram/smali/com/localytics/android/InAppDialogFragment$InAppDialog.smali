.class final Lcom/localytics/android/InAppDialogFragment$InAppDialog;
.super Landroid/app/Dialog;
.source "InAppDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InAppDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;,
        Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;
    }
.end annotation


# static fields
.field private static final LOCATION_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final LOCATION_CENTER:Ljava/lang/String; = "center"

.field private static final LOCATION_FULL:Ljava/lang/String; = "full"

.field private static final LOCATION_TOP:Ljava/lang/String; = "top"

.field private static final MARGIN:I = 0xa

.field private static final MAX_BANNER_WIDTH_DIP:I = 0x168


# instance fields
.field private mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimFullIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimFullOut:Landroid/view/animation/TranslateAnimation;

.field private mAnimTopIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimTopOut:Landroid/view/animation/TranslateAnimation;

.field private mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mHeight:F

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mWebView:Lcom/localytics/android/MarketingWebView;

.field private mWidth:F

.field final synthetic this$0:Lcom/localytics/android/InAppDialogFragment;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    .line 476
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 478
    invoke-direct {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->setupViews()V

    .line 479
    invoke-direct {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->createAnimations()V

    .line 480
    invoke-direct {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->adjustLayout()V

    .line 487
    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {p1}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "html_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingWebView;->loadUrl(Ljava/lang/String;)V

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Lcom/localytics/android/MarketingWebView;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F

    return v0
.end method

.method static synthetic access$400(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mHeight:F

    return v0
.end method

.method static synthetic access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v9, 0x400

    const/16 v5, 0x20

    const/4 v8, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 646
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 647
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 648
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 651
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "display_width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F

    .line 652
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "display_height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mHeight:F

    .line 655
    iget v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mHeight:F

    iget v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F

    div-float v1, v0, v1

    .line 656
    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 661
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 662
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 664
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 668
    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v4}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v4

    invoke-virtual {v4}, Lcom/localytics/android/InAppCampaign;->getDisplayLocation()Ljava/lang/String;

    move-result-object v4

    .line 669
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 672
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0, v4}, Landroid/view/Window;->setLayout(II)V

    .line 674
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    float-to-int v4, v0

    .line 675
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 676
    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F

    iget-object v6, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 677
    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F

    iget-object v6, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 678
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 679
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0}, Lcom/localytics/android/MarketingWebView;->requestLayout()V

    .line 682
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 683
    neg-int v1, v4

    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v1, v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->requestLayout()V

    .line 711
    :cond_0
    :goto_0
    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 712
    return-void

    .line 688
    :cond_1
    const-string v5, "full"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 691
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 694
    :cond_2
    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 696
    const v4, -0xfffffff

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 697
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 699
    float-to-int v0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 702
    :cond_3
    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 704
    const v4, 0xfffffff

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 705
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 707
    float-to-int v0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method private createAnimations()V
    .locals 9

    .prologue
    .line 558
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    .line 559
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 560
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    .line 561
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 563
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    .line 564
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 565
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    .line 566
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 568
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    .line 569
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 570
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    .line 571
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 573
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    .line 574
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 575
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    .line 576
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 578
    new-instance v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$2;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V

    .line 607
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 608
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 609
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 610
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 612
    new-instance v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V

    .line 636
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 637
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 638
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 639
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 640
    return-void
.end method

.method private setupViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 497
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 498
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    const-string v1, "amp_view"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 504
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 505
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 506
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 510
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 514
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 516
    new-instance v1, Lcom/localytics/android/MarketingWebView;

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/localytics/android/MarketingWebView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    .line 517
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebView;->setId(I)V

    .line 518
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0, v4}, Lcom/localytics/android/MarketingWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0, v4}, Lcom/localytics/android/MarketingWebView;->setVerticalScrollBarEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    new-instance v1, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;
    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment;->access$800(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;Lcom/localytics/android/MarketingWebViewManager;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 521
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment;->access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v1

    const-string v2, "localytics"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0, v5, v6}, Lcom/localytics/android/MarketingWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    .line 530
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    new-instance v1, Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    # getter for: Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->access$1000()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->RIGHT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    if-ne v0, v1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;

    invoke-virtual {v2}, Lcom/localytics/android/MarketingWebView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v1, v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {p0, v5}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->requestWindowFeature(I)Z

    .line 550
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->setContentView(Landroid/view/View;)V

    .line 551
    return-void
.end method


# virtual methods
.method dismissWithAnimation()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$1600(Lcom/localytics/android/InAppDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;-><init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    return-void
.end method

.method enterWithAnimation()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign;->getDisplayLocation()Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimCenterIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimFullIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 768
    :cond_2
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimTopIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 773
    :cond_3
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mAnimBottomIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 792
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$900(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->dismissWithAnimation()V

    .line 798
    :cond_0
    const/4 v0, 0x1

    .line 800
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mBtnClose:Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->release()V

    .line 786
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 787
    return-void
.end method
