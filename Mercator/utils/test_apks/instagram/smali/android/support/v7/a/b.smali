.class public Landroid/support/v7/a/b;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/a/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/support/v7/a/b$a;

.field private c:Landroid/support/v7/d/a/b;

.field private final d:I

.field private final e:I


# direct methods
.method private a(F)V
    .locals 2

    .prologue
    .line 486
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Landroid/support/v7/a/b;->c:Landroid/support/v7/d/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    .line 491
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/b;->c:Landroid/support/v7/d/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/d/a/b;->a(F)V

    .line 492
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Landroid/support/v7/a/b;->c:Landroid/support/v7/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 408
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/a/b;->a(F)V

    .line 409
    iget-boolean v0, p0, Landroid/support/v7/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 410
    iget v0, p0, Landroid/support/v7/a/b;->e:I

    invoke-virtual {p0, v0}, Landroid/support/v7/a/b;->b(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 396
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/a/b;->a(F)V

    .line 397
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v7/a/b;->b:Landroid/support/v7/a/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/a/b$a;->a(I)V

    .line 479
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/a/b;->a(F)V

    .line 424
    iget-boolean v0, p0, Landroid/support/v7/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Landroid/support/v7/a/b;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/a/b;->b(I)V

    .line 427
    :cond_0
    return-void
.end method
