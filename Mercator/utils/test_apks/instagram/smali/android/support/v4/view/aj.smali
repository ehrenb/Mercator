.class Landroid/support/v4/view/aj;
.super Ljava/lang/Object;
.source "ViewCompatJB.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 60
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 52
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 39
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 84
    return-void
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method
