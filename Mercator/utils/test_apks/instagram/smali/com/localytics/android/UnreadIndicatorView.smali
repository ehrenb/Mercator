.class public Lcom/localytics/android/UnreadIndicatorView;
.super Landroid/view/View;
.source "UnreadIndicatorView.java"


# static fields
.field private static final DEFAULT_COLOR:Ljava/lang/String; = "#007AFF"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/UnreadIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/UnreadIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/UnreadIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 37
    const-string v0, "#007AFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/localytics/android/UnreadIndicatorView;->mColor:I

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 55
    invoke-virtual {p0}, Lcom/localytics/android/UnreadIndicatorView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 56
    invoke-virtual {p0}, Lcom/localytics/android/UnreadIndicatorView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 57
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 60
    iget-object v3, p0, Lcom/localytics/android/UnreadIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v3, p0, Lcom/localytics/android/UnreadIndicatorView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/localytics/android/UnreadIndicatorView;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v3, p0, Lcom/localytics/android/UnreadIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v3, p0, Lcom/localytics/android/UnreadIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/localytics/android/UnreadIndicatorView;->mColor:I

    .line 49
    invoke-virtual {p0}, Lcom/localytics/android/UnreadIndicatorView;->invalidate()V

    .line 50
    return-void
.end method
