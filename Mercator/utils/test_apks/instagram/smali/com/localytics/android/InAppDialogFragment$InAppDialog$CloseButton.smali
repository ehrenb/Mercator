.class final Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;
.super Landroid/view/View;
.source "InAppDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CloseButton"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mInnerRadius:F

.field private final mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F

.field private final mShadowInnerPaint:Landroid/graphics/Paint;

.field private final mShadowOuterPaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:F

.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/high16 v7, 0x41d00000    # 26.0f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 835
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    .line 836
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 838
    invoke-virtual {p0, v5}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setId(I)V

    .line 839
    const-string v0, "close_button"

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 842
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 849
    mul-float v0, v2, v1

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    .line 850
    mul-float v0, v2, v1

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    .line 851
    mul-float v0, v2, v1

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    .line 852
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    .line 853
    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mStrokeWidth:F

    .line 854
    iget v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mStrokeWidth:F

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mInnerRadius:F

    .line 856
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    .line 858
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    .line 859
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    sub-float/2addr v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 860
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    .line 861
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 863
    # getter for: Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->access$1700()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 864
    :goto_0
    mul-float/2addr v0, v1

    .line 865
    add-float/2addr v0, v6

    .line 866
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v0

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    mul-float v0, v7, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    mul-float v2, v7, v1

    add-float/2addr v2, v6

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 870
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 873
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 875
    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    iget-object v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 878
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 880
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 881
    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mInnerRadius:F

    iget-object v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 884
    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40900000    # 4.5f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 885
    iget v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 886
    iget v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mOffset:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 887
    return-void

    .line 863
    :cond_1
    const/high16 v0, 0x42200000    # 40.0f

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 894
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 898
    # getter for: Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->access$1700()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 900
    # getter for: Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->access$1700()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 925
    :cond_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 906
    # getter for: Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->access$1000()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    sget-object v2, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    if-ne v0, v2, :cond_2

    move v0, v1

    move v2, v3

    .line 916
    :goto_1
    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 917
    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterX:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mCenterY:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mRadius:F

    sub-float v1, v5, v1

    iget-object v5, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 918
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 913
    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    mul-float v2, v0, v1

    .line 914
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 934
    :cond_0
    return-void
.end method
