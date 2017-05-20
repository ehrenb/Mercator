.class abstract Landroid/support/design/widget/i;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/i$a;
    }
.end annotation


# static fields
.field static final b:Landroid/view/animation/Interpolator;

.field static final j:[I

.field static final k:[I

.field static final l:[I

.field static final m:[I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field c:I

.field d:Landroid/graphics/drawable/Drawable;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/support/design/widget/b;

.field g:Landroid/graphics/drawable/Drawable;

.field h:F

.field i:F

.field final n:Landroid/support/design/widget/ac;

.field final o:Landroid/support/design/widget/o;

.field final p:Landroid/support/design/widget/t$d;

.field private q:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 36
    sget-object v0, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/i;->b:Landroid/view/animation/Interpolator;

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/i;->j:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/i;->k:[I

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/i;->l:[I

    .line 66
    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/i;->m:[I

    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/ac;Landroid/support/design/widget/o;Landroid/support/design/widget/t$d;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/i;->c:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    .line 78
    iput-object p2, p0, Landroid/support/design/widget/i;->o:Landroid/support/design/widget/o;

    .line 79
    iput-object p3, p0, Landroid/support/design/widget/i;->p:Landroid/support/design/widget/t$d;

    .line 80
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/support/design/widget/i$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/i$1;-><init>(Landroid/support/design/widget/i;)V

    iput-object v0, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()F
.end method

.method a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/i;->j()Landroid/support/design/widget/b;

    move-result-object v1

    .line 155
    sget v2, Landroid/support/design/a$c;->design_fab_stroke_top_outer_color:I

    .line 156
    invoke-static {v0, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/a$c;->design_fab_stroke_top_inner_color:I

    .line 157
    invoke-static {v0, v3}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/a$c;->design_fab_stroke_end_inner_color:I

    .line 158
    invoke-static {v0, v4}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/a$c;->design_fab_stroke_end_outer_color:I

    .line 159
    invoke-static {v0, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    .line 155
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/b;->a(IIII)V

    .line 160
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b;->a(F)V

    .line 161
    invoke-virtual {v1, p2}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    .line 162
    return-object v1
.end method

.method final a(F)V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/support/design/widget/i;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 93
    iput p1, p0, Landroid/support/design/widget/i;->h:F

    .line 94
    iget v0, p0, Landroid/support/design/widget/i;->i:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/i;->a(FF)V

    .line 96
    :cond_0
    return-void
.end method

.method abstract a(FF)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a(Landroid/graphics/Rect;)V
.end method

.method abstract a(Landroid/support/design/widget/i$a;Z)V
.end method

.method abstract a([I)V
.end method

.method abstract b()V
.end method

.method final b(F)V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/design/widget/i;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    iput p1, p0, Landroid/support/design/widget/i;->i:F

    .line 103
    iget v0, p0, Landroid/support/design/widget/i;->h:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/i;->a(FF)V

    .line 105
    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method abstract b(Landroid/support/design/widget/i$a;Z)V
.end method

.method abstract c()V
.end method

.method d()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/design/widget/i;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final g()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p0, v0}, Landroid/support/design/widget/i;->a(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/support/design/widget/i;->b(Landroid/graphics/Rect;)V

    .line 127
    iget-object v1, p0, Landroid/support/design/widget/i;->o:Landroid/support/design/widget/o;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/o;->a(IIII)V

    .line 128
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/design/widget/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/i;->n()V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 139
    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 146
    :cond_0
    return-void
.end method

.method j()Landroid/support/design/widget/b;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Landroid/support/design/widget/b;

    invoke-direct {v0}, Landroid/support/design/widget/b;-><init>()V

    return-object v0
.end method

.method k()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 187
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    return-object v0
.end method

.method l()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 192
    iget-object v2, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v2}, Landroid/support/design/widget/ac;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget v2, p0, Landroid/support/design/widget/i;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    iget v2, p0, Landroid/support/design/widget/i;->c:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method m()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 202
    iget-object v2, p0, Landroid/support/design/widget/i;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v2}, Landroid/support/design/widget/ac;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 204
    iget v2, p0, Landroid/support/design/widget/i;->c:I

    if-ne v2, v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    iget v2, p0, Landroid/support/design/widget/i;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
