.class Lcom/localytics/android/InboxErrorImage;
.super Landroid/view/View;
.source "InboxErrorImage.java"


# static fields
.field private static final DEFAULT_STROKE_WIDTH_DP:I = 0x4


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mStart:F

.field private mStrokeWidth:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1060000

    invoke-static {v0, v1}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/localytics/android/InboxErrorImage;->mColor:I

    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/localytics/android/InboxErrorImage;->mStrokeWidth:F

    .line 28
    iget v0, p0, Lcom/localytics/android/InboxErrorImage;->mStrokeWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 29
    iget v2, p0, Lcom/localytics/android/InboxErrorImage;->mStrokeWidth:F

    float-to-double v2, v2

    div-double/2addr v2, v4

    .line 30
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    .line 31
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    iget-object v0, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/InboxErrorImage;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/InboxErrorImage;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget v1, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    iget v2, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 44
    iget v1, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/localytics/android/InboxErrorImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/localytics/android/InboxErrorImage;->mStart:F

    iget-object v5, p0, Lcom/localytics/android/InboxErrorImage;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method
