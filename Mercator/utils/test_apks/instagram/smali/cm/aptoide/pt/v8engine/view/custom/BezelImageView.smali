.class public Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;
.super Landroid/widget/ImageView;
.source "BezelImageView.java"


# instance fields
.field private mBlackPaint:Landroid/graphics/Paint;

.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mBoundsF:Landroid/graphics/RectF;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheValid:Z

.field private mCachedHeight:I

.field private mCachedWidth:I

.field private mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mDesaturateOnPress:Z

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaskedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    .line 45
    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheValid:Z

    .line 62
    sget-object v0, Lcm/aptoide/pt/v8engine/R$styleable;->BezelImageView:[I

    .line 63
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    sget v1, Lcm/aptoide/pt/v8engine/R$styleable;->BezelImageView_maskDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 70
    :cond_0
    sget v1, Lcm/aptoide/pt/v8engine/R$styleable;->BezelImageView_borderDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    :cond_1
    sget v1, Lcm/aptoide/pt/v8engine/R$styleable;->BezelImageView_desaturateOnPress:I

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 90
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 94
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 96
    :cond_2
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->isDuplicateParentStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {p0}, Landroid/support/v4/view/ae;->c(Landroid/view/View;)V

    .line 140
    :cond_2
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->invalidate()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0xc

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 148
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 150
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 154
    iget-boolean v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheValid:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedWidth:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedHeight:I

    if-eq v2, v3, :cond_3

    .line 156
    :cond_2
    iget v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedWidth:I

    if-ne v0, v3, :cond_4

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedHeight:I

    if-ne v2, v3, :cond_4

    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 168
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 171
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 172
    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 174
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 176
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 190
    :goto_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 164
    iput v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedWidth:I

    .line 165
    iput v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedHeight:I

    goto :goto_1

    :cond_5
    move-object v1, v6

    .line 173
    goto :goto_2

    .line 178
    :cond_6
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateOnPress:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 180
    iget v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCachedHeight:I

    int-to-float v4, v2

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBlackPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mDesaturateColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 182
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 184
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 187
    :cond_7
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method protected setFrame(IIII)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p3, p1

    sub-int v3, p4, p2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBoundsF:Landroid/graphics/RectF;

    .line 115
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    :cond_1
    if-eqz v0, :cond_2

    .line 123
    iput-boolean v4, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mCacheValid:Z

    .line 126
    :cond_2
    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/custom/BezelImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
