.class Landroid/support/design/widget/h;
.super Landroid/support/design/widget/g;
.source "FloatingActionButtonIcs.java"


# instance fields
.field private q:F


# direct methods
.method constructor <init>(Landroid/support/design/widget/ac;Landroid/support/design/widget/o;Landroid/support/design/widget/t$d;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/g;-><init>(Landroid/support/design/widget/ac;Landroid/support/design/widget/o;Landroid/support/design/widget/t$d;)V

    .line 33
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/h;->q:F

    .line 34
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-static {v0}, Landroid/support/v4/view/ae;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 161
    iget v0, p0, Landroid/support/design/widget/h;->q:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/ac;->setLayerType(ILandroid/graphics/Paint;)V

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/n;

    iget v1, p0, Landroid/support/design/widget/h;->q:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->a(F)V

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/b;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/b;

    iget v1, p0, Landroid/support/design/widget/h;->q:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b;->b(F)V

    .line 179
    :cond_2
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/ac;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/support/design/widget/i$a;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/support/design/widget/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 59
    invoke-direct {p0}, Landroid/support/design/widget/h;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/h;->c:I

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/h$1;-><init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/i$a;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/ac;->a(IZ)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Landroid/support/design/widget/i$a;->b()V

    goto :goto_0
.end method

.method b(Landroid/support/design/widget/i$a;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    invoke-virtual {p0}, Landroid/support/design/widget/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 112
    invoke-direct {p0}, Landroid/support/design/widget/h;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/h;->c:I

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ac;->setAlpha(F)V

    .line 118
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ac;->setScaleY(F)V

    .line 119
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ac;->setScaleX(F)V

    .line 122
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/h$2;-><init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/i$a;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/ac;->a(IZ)V

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/ac;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/ac;->setScaleY(F)V

    .line 146
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/ac;->setScaleX(F)V

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Landroid/support/design/widget/i$a;->a()V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/ac;

    invoke-virtual {v0}, Landroid/support/design/widget/ac;->getRotation()F

    move-result v0

    .line 44
    iget v1, p0, Landroid/support/design/widget/h;->q:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 45
    iput v0, p0, Landroid/support/design/widget/h;->q:F

    .line 46
    invoke-direct {p0}, Landroid/support/design/widget/h;->o()V

    .line 48
    :cond_0
    return-void
.end method
