.class Landroid/support/v4/view/aw;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatJB.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/support/v4/view/ay;)V
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/aw$1;

    invoke-direct {v1, p1, p0}, Landroid/support/v4/view/aw$1;-><init>(Landroid/support/v4/view/ay;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
