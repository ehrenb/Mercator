.class public Lcm/aptoide/pt/v8engine/customviews/DotsView;
.super Landroid/view/View;
.source "DotsView.java"


# static fields
.field private static final COLOR_1:I = -0x3ef9

.field private static final COLOR_2:I = -0x6800

.field private static final COLOR_3:I = -0xa8de

.field private static final COLOR_4:I = -0xbbcca

.field private static final DOTS_COUNT:I = 0x7

.field public static final DOTS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcm/aptoide/pt/v8engine/customviews/DotsView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTER_DOTS_POSITION_ANGLE:I = 0x33


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private centerX:I

.field private centerY:I

.field private final circlePaints:[Landroid/graphics/Paint;

.field private currentDotSize1:F

.field private currentDotSize2:F

.field private currentProgress:F

.field private currentRadius1:F

.field private currentRadius2:F

.field private maxDotSize:F

.field private maxInnerDotsRadius:F

.field private maxOuterDotsRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/v8engine/customviews/DotsView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "dotsProgress"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/customviews/DotsView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->DOTS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 36
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    .line 37
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    .line 38
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    .line 39
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    .line 40
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    .line 41
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 45
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 36
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    .line 37
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    .line 38
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    .line 39
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    .line 40
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    .line 41
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 57
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    .line 36
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    .line 37
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    .line 38
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    .line 39
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    .line 40
    iput v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    .line 41
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 62
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->init()V

    .line 63
    return-void
.end method

.method private drawInnerDotsFrame(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 90
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 91
    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerX:I

    int-to-double v2, v1

    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    float-to-double v4, v1

    mul-int/lit8 v1, v0, 0x33

    add-int/lit8 v1, v1, -0xa

    int-to-double v6, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 93
    iget v2, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerY:I

    int-to-double v2, v2

    iget v4, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    float-to-double v4, v4

    mul-int/lit8 v6, v0, 0x33

    add-int/lit8 v6, v6, -0xa

    int-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 95
    int-to-float v1, v1

    int-to-float v2, v2

    iget v3, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v6, v6

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private drawOuterDotsFrame(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 80
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 81
    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerX:I

    int-to-double v2, v1

    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    float-to-double v4, v1

    mul-int/lit8 v1, v0, 0x33

    int-to-double v6, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 83
    iget v2, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerY:I

    int-to-double v2, v2

    iget v4, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    float-to-double v4, v4

    mul-int/lit8 v6, v0, 0x33

    int-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 85
    int-to-float v1, v1

    int-to-float v2, v2

    iget v3, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v5, v5

    rem-int v5, v0, v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 51
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method private updateDotsAlpha()V
    .locals 10

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    .line 175
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 176
    float-to-double v0, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 177
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    return-void
.end method

.method private updateDotsPaints()V
    .locals 10

    .prologue
    .line 157
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 158
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 159
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v3, -0x3ef9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x6800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v3, -0x6800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xa8de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v3, -0xa8de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xbbcca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v3, -0xbbcca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x3ef9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 166
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v3, -0x6800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xa8de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v3, -0xa8de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xbbcca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v3, -0xbbcca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x3ef9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->circlePaints:[Landroid/graphics/Paint;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v3, -0x3ef9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x6800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method private updateInnerDotsPosition()V
    .locals 14

    .prologue
    const v10, 0x3e99999a    # 0.3f

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 115
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_0

    .line 116
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    iget v6, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxInnerDotsRadius:F

    float-to-double v8, v6

    move-wide v6, v2

    .line 117
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    .line 123
    :goto_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 124
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    .line 134
    :goto_1
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxInnerDotsRadius:F

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius2:F

    goto :goto_0

    .line 125
    :cond_1
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_2

    .line 126
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    iget v4, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    float-to-double v6, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    iget v8, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    float-to-double v8, v8

    mul-double/2addr v8, v4

    move-wide v4, v12

    .line 127
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    goto :goto_1

    .line 130
    :cond_2
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v4, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    mul-float/2addr v0, v10

    float-to-double v10, v0

    move-wide v6, v12

    move-wide v12, v2

    .line 131
    invoke-static/range {v4 .. v13}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize2:F

    goto :goto_1
.end method

.method private updateOuterDotsPosition()V
    .locals 10

    .prologue
    .line 137
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 138
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    const-wide/16 v6, 0x0

    iget v8, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxOuterDotsRadius:F

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    .line 139
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    .line 147
    :goto_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 148
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    .line 154
    :goto_1
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v6, 0x3f4ccccd    # 0.8f

    iget v7, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxOuterDotsRadius:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxOuterDotsRadius:F

    float-to-double v8, v8

    .line 143
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentRadius1:F

    goto :goto_0

    .line 150
    :cond_1
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    float-to-double v0, v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    .line 151
    invoke-static/range {v0 .. v9}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentDotSize1:F

    goto :goto_1
.end method


# virtual methods
.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->drawOuterDotsFrame(Landroid/graphics/Canvas;)V

    .line 76
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->drawInnerDotsFrame(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 67
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerX:I

    .line 68
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->centerY:I

    .line 69
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    .line 70
    int-to-float v0, p1

    const v1, 0x40133333    # 2.3f

    div-float/2addr v0, v1

    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxDotSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxOuterDotsRadius:F

    .line 71
    const v0, 0x3f4ccccd    # 0.8f

    iget v1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxOuterDotsRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->maxInnerDotsRadius:F

    .line 72
    return-void
.end method

.method public setCurrentProgress(F)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcm/aptoide/pt/v8engine/customviews/DotsView;->currentProgress:F

    .line 106
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->updateInnerDotsPosition()V

    .line 107
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->updateOuterDotsPosition()V

    .line 108
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->updateDotsPaints()V

    .line 109
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->updateDotsAlpha()V

    .line 111
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->postInvalidate()V

    .line 112
    return-void
.end method
