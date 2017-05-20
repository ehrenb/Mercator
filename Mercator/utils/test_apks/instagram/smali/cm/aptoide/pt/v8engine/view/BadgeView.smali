.class public Lcm/aptoide/pt/v8engine/view/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_BADGE_COLOR:I = -0x1

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2


# instance fields
.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "#CCFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcm/aptoide/pt/v8engine/view/BadgeView;->DEFAULT_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 227
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1, p4, p5}, Lcm/aptoide/pt/v8engine/view/BadgeView;->init(Landroid/content/Context;Landroid/view/View;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 239
    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6

    .prologue
    .line 252
    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 253
    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 198
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgePosition:I

    packed-switch v1, :pswitch_data_0

    .line 223
    :goto_0
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void

    .line 200
    :pswitch_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 204
    :pswitch_1
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 208
    :pswitch_2
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 212
    :pswitch_3
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 213
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 216
    :pswitch_4
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private applyTo(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 127
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    instance-of v3, p1, Landroid/widget/TabWidget;

    if-eqz v3, :cond_0

    .line 132
    check-cast p1, Landroid/widget/TabWidget;

    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->targetTabIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->target:Landroid/view/View;

    .line 135
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0, v5}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setVisibility(I)V

    .line 139
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, v5}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setVisibility(I)V

    .line 152
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method private dipToPixels(I)I
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 120
    float-to-int v0, v0

    return v0
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 183
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->dipToPixels(I)I

    move-result v0

    .line 184
    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v0, v0

    aput v0, v1, v2

    .line 186
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 187
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 188
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    return-object v1
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setVisibility(I)V

    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/view/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown:Z

    .line 286
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v1, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->target:Landroid/view/View;

    .line 87
    iput p3, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->targetTabIndex:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgePosition:I

    .line 91
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->dipToPixels(I)I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    .line 92
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeColor:I

    .line 95
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->dipToPixels(I)I

    move-result v0

    .line 97
    invoke-virtual {p0, v0, v2, v0, v2}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setPadding(IIII)V

    .line 98
    sget v0, Lcm/aptoide/pt/v8engine/view/BadgeView;->DEFAULT_TEXT_COLOR:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setTextColor(I)V

    .line 100
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    iput-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown:Z

    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->target:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->target:Landroid/view/View;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->applyTo(Landroid/view/View;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show()V

    goto :goto_0
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 170
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->applyLayoutParams()V

    .line 174
    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/view/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setVisibility(I)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown:Z

    .line 179
    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown:Z

    if-eqz v2, :cond_1

    .line 315
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcm/aptoide/pt/v8engine/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 319
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p2}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public decrement(I)I
    .locals 1

    .prologue
    .line 349
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->increment(I)I

    move-result v0

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 278
    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 304
    return-void
.end method

.method public hide(Z)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 295
    return-void
.end method

.method public increment(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 372
    :cond_0
    :goto_0
    add-int/2addr v0, p1

    .line 373
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    return v0

    .line 366
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1

    .prologue
    .line 460
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeColor:I

    .line 461
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 462
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0

    .prologue
    .line 432
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    .line 433
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    .line 434
    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0

    .prologue
    .line 443
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginH:I

    .line 444
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgeMarginV:I

    .line 445
    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0

    .prologue
    .line 409
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->badgePosition:I

    .line 410
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 163
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 271
    return-void
.end method

.method public show(Z)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 262
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 311
    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 338
    return-void
.end method

.method public toggle(Z)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method
