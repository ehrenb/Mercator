.class public Landroid/support/v7/widget/bb;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bb$b;,
        Landroid/support/v7/widget/bb$a;,
        Landroid/support/v7/widget/bb$c;
    }
.end annotation


# static fields
.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Landroid/support/v7/widget/am;

.field c:I

.field d:I

.field private e:Landroid/support/v7/widget/bb$b;

.field private f:Landroid/widget/Spinner;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/bb;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 157
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->d()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    .line 159
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->removeView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    new-instance v1, Landroid/support/v7/widget/bb$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bb$a;-><init>(Landroid/support/v7/widget/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    .line 169
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    iget v1, p0, Landroid/support/v7/widget/bb;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return v4

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->setTabSelected(I)V

    goto :goto_0
.end method

.method private d()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    new-instance v1, Landroid/support/v7/widget/am$a;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/am$a;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    return-object v0
.end method


# virtual methods
.method a(Landroid/support/v7/a/a$c;Z)Landroid/support/v7/widget/bb$c;
    .locals 4

    .prologue
    .line 293
    new-instance v0, Landroid/support/v7/widget/bb$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/bb$c;-><init>(Landroid/support/v7/widget/bb;Landroid/content/Context;Landroid/support/v7/a/a$c;Z)V

    .line 294
    if-eqz p2, :cond_0

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/widget/bb;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb$c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb$c;->setFocusable(Z)V

    .line 301
    iget-object v1, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/bb$b;

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Landroid/support/v7/widget/bb$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bb$b;-><init>(Landroid/support/v7/widget/bb;)V

    iput-object v1, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/bb$b;

    .line 304
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/bb$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb$c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bb;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    new-instance v1, Landroid/support/v7/widget/bb$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/bb$1;-><init>(Landroid/support/v7/widget/bb;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/support/v7/view/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bb;->setContentHeight(I)V

    .line 231
    invoke-virtual {v0}, Landroid/support/v7/view/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bb;->d:I

    .line 232
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 371
    check-cast p2, Landroid/support/v7/widget/bb$c;

    .line 372
    invoke-virtual {p2}, Landroid/support/v7/widget/bb$c;->b()Landroid/support/v7/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a$c;->d()V

    .line 373
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 98
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 99
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->setFillViewport(Z)V

    .line 101
    iget-object v4, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v4}, Landroid/support/v7/widget/am;->getChildCount()I

    move-result v4

    .line 102
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 104
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/bb;->c:I

    .line 109
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/bb;->c:I

    iget v4, p0, Landroid/support/v7/widget/bb;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/bb;->c:I

    .line 114
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/bb;->h:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 116
    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/widget/bb;->g:Z

    if-eqz v4, :cond_5

    .line 118
    :goto_3
    if-eqz v1, :cond_7

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/am;->measure(II)V

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v1}, Landroid/support/v7/widget/am;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->b()V

    .line 130
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getMeasuredWidth()I

    move-result v1

    .line 131
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getMeasuredWidth()I

    move-result v2

    .line 134
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 136
    iget v0, p0, Landroid/support/v7/widget/bb;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bb;->setTabSelected(I)V

    .line 138
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0

    .line 107
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/widget/bb;->c:I

    goto :goto_1

    .line 111
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/widget/bb;->c:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 116
    goto :goto_3

    .line 124
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->c()Z

    goto :goto_4

    .line 127
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/bb;->c()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Landroid/support/v7/widget/bb;->g:Z

    .line 151
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Landroid/support/v7/widget/bb;->h:I

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->requestLayout()V

    .line 201
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    iput p1, p0, Landroid/support/v7/widget/bb;->i:I

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->getChildCount()I

    move-result v3

    move v2, v1

    .line 185
    :goto_0
    if-ge v2, v3, :cond_2

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 188
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bb;->a(I)V

    .line 185
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    :cond_3
    return-void
.end method
