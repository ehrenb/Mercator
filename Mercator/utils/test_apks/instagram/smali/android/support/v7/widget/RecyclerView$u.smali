.class Landroid/support/v7/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "u"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/x;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4549
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4540
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->e:Landroid/view/animation/Interpolator;

    .line 4544
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$u;->f:Z

    .line 4547
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    .line 4550
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    .line 4551
    return-void
.end method

.method private a(F)F
    .locals 4

    .prologue
    .line 4710
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4711
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4712
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4716
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4717
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4718
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 4719
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4720
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4721
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4722
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4723
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4724
    int-to-float v7, v6

    int-to-float v6, v6

    .line 4725
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$u;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4728
    if-lez v4, :cond_2

    .line 4729
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4734
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4718
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4721
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4731
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4732
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 4731
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 4673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    .line 4674
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:Z

    .line 4675
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 4678
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:Z

    .line 4679
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    if-eqz v0, :cond_0

    .line 4680
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 4682
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 4685
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:Z

    if-eqz v0, :cond_0

    .line 4686
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    .line 4691
    :goto_0
    return-void

    .line 4688
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4695
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 4696
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/x;->a(IIIIIIII)V

    .line 4698
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 4699
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 4738
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$u;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4739
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 4706
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$u;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$u;->a(III)V

    .line 4707
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4742
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4743
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$u;->e:Landroid/view/animation/Interpolator;

    .line 4744
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    .line 4746
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4747
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 4748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/x;->a(IIIII)V

    .line 4749
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 4750
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 4753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->h()V

    .line 4755
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4702
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$u;->a(IIII)V

    .line 4703
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 4555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 4556
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->b()V

    .line 4670
    :goto_0
    return-void

    .line 4559
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->c()V

    .line 4560
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 4563
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$u;->d:Landroid/support/v4/widget/x;

    .line 4564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$h;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$r;

    .line 4565
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4566
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->b()I

    move-result v9

    .line 4567
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->c()I

    move-result v10

    .line 4568
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    sub-int v11, v9, v0

    .line 4569
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    sub-int v12, v10, v0

    .line 4570
    const/4 v3, 0x0

    .line 4571
    const/4 v1, 0x0

    .line 4572
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 4573
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 4574
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4575
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v4, :cond_16

    .line 4576
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 4577
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 4578
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/h;->a(Ljava/lang/String;)V

    .line 4579
    if-eqz v11, :cond_1

    .line 4580
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$o;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$o;Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v3

    .line 4581
    sub-int v2, v11, v3

    .line 4583
    :cond_1
    if-eqz v12, :cond_2

    .line 4584
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$o;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$h;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$o;Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v1

    .line 4585
    sub-int v0, v12, v1

    .line 4587
    :cond_2
    invoke-static {}, Landroid/support/v4/os/h;->a()V

    .line 4588
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 4590
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 4591
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4593
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4594
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4595
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$s;->e()I

    move-result v4

    .line 4596
    if-nez v4, :cond_14

    .line 4597
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->stop()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4606
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4607
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4609
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 4610
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 4612
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    .line 4613
    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->f()F

    move-result v4

    float-to-int v5, v4

    .line 4615
    const/4 v4, 0x0

    .line 4616
    if-eq v1, v9, :cond_1f

    .line 4617
    if-gez v1, :cond_17

    neg-int v4, v5

    :goto_2
    move v6, v4

    .line 4620
    :goto_3
    const/4 v4, 0x0

    .line 4621
    if-eq v0, v10, :cond_1e

    .line 4622
    if-gez v0, :cond_19

    neg-int v5, v5

    .line 4625
    :cond_6
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7

    .line 4626
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 4628
    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/x;->d()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v10, :cond_9

    .line 4629
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->e()I

    move-result v0

    if-nez v0, :cond_a

    .line 4630
    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->h()V

    .line 4633
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    .line 4634
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 4637
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4638
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4641
    :cond_d
    if-eqz v12, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v12, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    .line 4643
    :goto_5
    if-eqz v11, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v3, v11, :cond_1b

    const/4 v0, 0x1

    .line 4645
    :goto_6
    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_1c

    :cond_f
    const/4 v0, 0x1

    .line 4648
    :goto_7
    invoke-virtual {v7}, Landroid/support/v4/widget/x;->a()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_1d

    .line 4649
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4650
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->a()V

    .line 4661
    :cond_11
    :goto_8
    if-eqz v8, :cond_13

    .line 4662
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->isPendingInitialRun()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4663
    const/4 v0, 0x0

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView$r;->onAnimation(II)V
    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->access$600(Landroid/support/v7/widget/RecyclerView$r;II)V

    .line 4665
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Z

    if-nez v0, :cond_13

    .line 4666
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->stop()V

    .line 4669
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->d()V

    goto/16 :goto_0

    .line 4598
    :cond_14
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$r;->getTargetPosition()I

    move-result v5

    if-lt v5, v4, :cond_15

    .line 4599
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$r;->setTargetPosition(I)V

    .line 4600
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$r;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$r;->access$600(Landroid/support/v7/widget/RecyclerView$r;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4602
    :cond_15
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$r;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$r;->access$600(Landroid/support/v7/widget/RecyclerView$r;II)V

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4617
    :cond_17
    if-lez v1, :cond_18

    move v4, v5

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4622
    :cond_19
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4641
    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 4643
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6

    .line 4645
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 4654
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 4655
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4656
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v11, v12}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    goto :goto_8

    :cond_1e
    move v5, v4

    goto/16 :goto_4

    :cond_1f
    move v6, v4

    goto/16 :goto_3
.end method
