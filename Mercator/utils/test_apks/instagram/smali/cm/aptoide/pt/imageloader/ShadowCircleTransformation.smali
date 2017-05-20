.class public Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/d;
.source "ShadowCircleTransformation.java"


# instance fields
.field private final shadowColor:I

.field private final spaceBetween:F

.field private final strokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->shadowColor:I

    .line 34
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->strokeSize:F

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->spaceBetween:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    iput p3, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->shadowColor:I

    .line 44
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->strokeSize:F

    .line 45
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->spaceBetween:F

    .line 46
    return-void
.end method

.method private circleCrop(Lcom/bumptech/glide/load/b/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 60
    invoke-static {p2, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, v1, v1, v0}, Lcom/bumptech/glide/load/b/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    int-to-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 70
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 71
    iget v6, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->shadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    int-to-float v6, v1

    const v7, 0x3ca3d70a    # 0.02f

    mul-float/2addr v6, v7

    .line 74
    const v7, -0x777778

    invoke-virtual {v5, v6, v8, v8, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 75
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sub-float v7, v4, v6

    invoke-virtual {v3, v4, v4, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    sub-float v6, v4, v6

    iget v7, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->spaceBetween:F

    mul-float/2addr v6, v7

    invoke-virtual {v3, v4, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 81
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v2, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 83
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    int-to-float v1, v1

    iget v2, p0, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->strokeSize:F

    mul-float/2addr v1, v2

    sub-float v1, v4, v1

    invoke-virtual {v3, v4, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/b/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;->circleCrop(Lcom/bumptech/glide/load/b/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
