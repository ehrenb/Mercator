.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$b;,
        Lcom/astuetz/PagerSlidingTabStrip$a;,
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$d;,
        Lcom/astuetz/PagerSlidingTabStrip$c;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Landroid/graphics/Typeface;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public a:Landroid/support/v4/view/ViewPager$f;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lcom/astuetz/PagerSlidingTabStrip$d;

.field private final f:Lcom/astuetz/PagerSlidingTabStrip$c;

.field private g:Lcom/astuetz/PagerSlidingTabStrip$b;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/content/res/ColorStateList;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010036
        0x10100d5
        0x10100d6
        0x10100d8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-direct {v0, p0, v2}, Lcom/astuetz/PagerSlidingTabStrip$d;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    .line 68
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$c;

    invoke-direct {v0, p0, v2}, Lcom/astuetz/PagerSlidingTabStrip$c;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->f:Lcom/astuetz/PagerSlidingTabStrip$c;

    .line 69
    iput-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->g:Lcom/astuetz/PagerSlidingTabStrip$b;

    .line 75
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    .line 82
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    .line 84
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    .line 87
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    .line 88
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    .line 91
    const/16 v0, 0xc

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    .line 92
    const/16 v0, 0xe

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    .line 93
    iput-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    .line 95
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    .line 96
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    .line 98
    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    .line 100
    iput-boolean v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    .line 101
    iput-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->C:Z

    .line 103
    iput-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->D:Landroid/graphics/Typeface;

    .line 104
    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    .line 107
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->G:I

    .line 109
    sget v0, Lcom/astuetz/a/a$a;->psts_background_tab:I

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    .line 358
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0}, Lcom/astuetz/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->I:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 121
    invoke-virtual {p0, v5}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 122
    invoke-virtual {p0, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 123
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    .line 133
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    .line 134
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    .line 135
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    .line 136
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    .line 137
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    .line 138
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    sget-object v0, Lcom/astuetz/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 146
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 147
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    .line 148
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    .line 149
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    .line 150
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 151
    if-lez v1, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    .line 152
    if-lez v1, :cond_4

    :goto_1
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    .line 153
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    const-string v0, "sans-serif"

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 158
    const-string v0, "sans-serif-medium"

    .line 159
    iput v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    .line 163
    :cond_0
    sget-object v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 164
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    .line 165
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    .line 166
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    .line 167
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    .line 168
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    .line 169
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsDividerWidth:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    .line 170
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    .line 171
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    .line 172
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    .line 173
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsPaddingMiddle:I

    iget-boolean v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    .line 174
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    .line 175
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    .line 176
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextSize:I

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    .line 177
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    .line 178
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextStyle:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    .line 179
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextAllCaps:I

    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->C:Z

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->C:Z

    .line 180
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextAlpha:I

    const/16 v2, 0x96

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 181
    sget v1, Lcom/astuetz/a/a$d;->PagerSlidingTabStrip_pstsTabTextFontFamily:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    .line 186
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v2, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {p0, v4, v4, v2}, Lcom/astuetz/PagerSlidingTabStrip;->a(III)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    .line 196
    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 199
    :cond_2
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->D:Landroid/graphics/Typeface;

    .line 202
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->b()V

    .line 205
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_3
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    return-void

    .line 151
    :cond_3
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    goto/16 :goto_0

    .line 152
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto/16 :goto_1

    :cond_5
    move-object v1, v2

    .line 177
    goto :goto_2

    .line 205
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    return p1
.end method

.method static synthetic a(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    return p1
.end method

.method private a(III)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    aput-object v2, v1, v6

    new-array v2, v7, [I

    aput p1, v2, v4

    aput p2, v2, v5

    aput p3, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method static synthetic a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 483
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    if-ge v0, v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 485
    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    .line 486
    :goto_1
    if-eqz v2, :cond_1

    .line 487
    invoke-direct {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->b(Landroid/view/View;)V

    .line 483
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 485
    goto :goto_1

    .line 489
    :cond_1
    invoke-direct {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->a(Landroid/view/View;)V

    goto :goto_2

    .line 492
    :cond_2
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 293
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 298
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 303
    :cond_2
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    sub-int/2addr v0, v1

    .line 304
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/f/h;

    move-result-object v1

    .line 305
    int-to-float v2, v0

    iget-object v0, v1, Landroid/support/v4/f/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, v1, Landroid/support/v4/f/h;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v3, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 308
    :cond_3
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->G:I

    if-eq v0, v1, :cond_0

    .line 309
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->G:I

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private a(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/astuetz/a/a$b;->psts_tab_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 253
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {v0, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p3, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 495
    if-eqz p1, :cond_1

    .line 496
    sget v0, Lcom/astuetz/a/a$b;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    if-eqz v0, :cond_0

    .line 498
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$a;

    invoke-interface {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip$a;->b(Landroid/view/View;)V

    .line 502
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    return p1
.end method

.method private b(I)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 750
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method static synthetic b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 211
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    .line 213
    return-void

    .line 211
    :cond_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 505
    if-eqz p1, :cond_1

    .line 506
    sget v0, Lcom/astuetz/a/a$b;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    if-eqz v0, :cond_0

    .line 508
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$a;

    invoke-interface {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip$a;->a(Landroid/view/View;)V

    .line 512
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    return p1
.end method

.method static synthetic c(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->g:Lcom/astuetz/PagerSlidingTabStrip$b;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 270
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    if-ge v1, v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 274
    sget v3, Lcom/astuetz/a/a$b;->psts_tab_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    if-eqz v0, :cond_0

    .line 276
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->D:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->E:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 278
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 281
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->C:Z

    if-eqz v3, :cond_0

    .line 282
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 283
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 290
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    return p1
.end method

.method static synthetic d(Lcom/astuetz/PagerSlidingTabStrip;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    return v0
.end method

.method static synthetic e(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method static synthetic e(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method static synthetic g(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    return v0
.end method

.method private getIndicatorCoordinates()Landroid/support/v4/f/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/h",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 316
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 320
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 321
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 324
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    sub-float v4, v5, v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 325
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->k:F

    sub-float v3, v5, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 328
    :cond_0
    new-instance v2, Landroid/support/v4/f/h;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/support/v4/f/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic h(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    return v0
.end method

.method static synthetic i(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 230
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getCount()I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    move v1, v2

    .line 232
    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    if-ge v1, v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->A:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$a;

    invoke-interface {v0, p0, v1}, Lcom/astuetz/PagerSlidingTabStrip$a;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 239
    :goto_1
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/z;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 240
    invoke-direct {p0, v1, v3, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/astuetz/a/a$c;->psts_tab:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->c()V

    .line 244
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 535
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/z;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 538
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$d;->a(Z)V

    .line 541
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 545
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 546
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/z;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 549
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$d;->a(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 402
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    if-lez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 405
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 412
    :cond_2
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    if-lez v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    int-to-float v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 418
    :cond_3
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    if-lez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/f/h;

    move-result-object v3

    .line 421
    iget-object v0, v3, Landroid/support/v4/f/h;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, v3, Landroid/support/v4/f/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    if-lez v0, :cond_1

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->B:Z

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 345
    invoke-virtual {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setClipToPadding(Z)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->I:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 355
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 356
    return-void

    .line 339
    :cond_3
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->y:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 556
    check-cast p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 557
    invoke-virtual {p1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 558
    iget v0, p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->a:I

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    .line 559
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Landroid/view/View;)V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 564
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 569
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 570
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->j:I

    iput v0, v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->a:I

    .line 571
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->C:Z

    .line 725
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .prologue
    .line 687
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    .line 688
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 689
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->t:I

    .line 693
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 694
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 707
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->s:I

    .line 708
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 709
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .prologue
    .line 697
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->r:I

    .line 698
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 699
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .prologue
    .line 662
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    .line 663
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 664
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->n:I

    .line 668
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 669
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .prologue
    .line 672
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->o:I

    .line 673
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 674
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$f;

    .line 431
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$b;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->g:Lcom/astuetz/PagerSlidingTabStrip$b;

    .line 427
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .prologue
    .line 712
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->F:I

    .line 713
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 714
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 1

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->z:Z

    .line 718
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 721
    :cond_0
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .prologue
    .line 782
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->H:I

    .line 783
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .prologue
    .line 786
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->u:I

    .line 787
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->c()V

    .line 788
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 738
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->w:Landroid/content/res/ColorStateList;

    .line 746
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->c()V

    .line 747
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    .line 734
    return-void
.end method

.method public setTextColorStateListResource(I)V
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 742
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 728
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->v:I

    .line 729
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->c()V

    .line 730
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .prologue
    .line 677
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    .line 678
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 679
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->q:I

    .line 683
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 684
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .prologue
    .line 702
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->p:I

    .line 703
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 704
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->h:Landroid/support/v4/view/ViewPager;

    .line 217
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    instance-of v0, v0, Lcom/astuetz/PagerSlidingTabStrip$a;

    iput-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->A:Z

    .line 222
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->f:Lcom/astuetz/PagerSlidingTabStrip$c;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 223
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/z;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 224
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->e:Lcom/astuetz/PagerSlidingTabStrip$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$d;->a(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->a()V

    .line 226
    return-void
.end method
