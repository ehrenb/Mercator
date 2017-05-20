.class public abstract Landroid/support/v7/widget/RecyclerView$r;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$r$b;,
        Landroid/support/v7/widget/RecyclerView$r$a;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$h;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10328
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    .line 10343
    new-instance v0, Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$r$a;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    .line 10344
    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 0

    .prologue
    .line 10326
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$r;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4

    .prologue
    .line 10438
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 10439
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 10440
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->stop()V

    .line 10442
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mPendingInitialRun:Z

    .line 10443
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 10445
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$r;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    if-ne v1, v2, :cond_4

    .line 10446
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$r;->onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$r$a;)V

    .line 10447
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$r$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 10448
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->stop()V

    .line 10454
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    if-eqz v1, :cond_3

    .line 10455
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$r;->onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$r$a;)V

    .line 10456
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$r$a;->a()Z

    move-result v1

    .line 10457
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$r$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$r$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 10458
    if-eqz v1, :cond_3

    .line 10460
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    if-eqz v1, :cond_5

    .line 10461
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mPendingInitialRun:Z

    .line 10462
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 10468
    :cond_3
    :goto_1
    return-void

    .line 10450
    :cond_4
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10451
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 10464
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 10488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 10481
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 10474
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 10382
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 10434
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 10498
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 10416
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 10424
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 4

    .prologue
    .line 10514
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10516
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 10517
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double v0, v2, v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 10518
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 10501
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$r;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10502
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    .line 10507
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$r$a;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$r$a;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    .prologue
    .line 10373
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    .line 10374
    return-void
.end method

.method start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10359
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 10360
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$h;

    .line 10361
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10364
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$s;I)I

    .line 10365
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    .line 10366
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mPendingInitialRun:Z

    .line 10367
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    .line 10368
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->onStart()V

    .line 10369
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()V

    .line 10370
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10392
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    if-nez v0, :cond_0

    .line 10406
    :goto_0
    return-void

    .line 10395
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->onStop()V

    .line 10396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$s;I)I

    .line 10397
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetView:Landroid/view/View;

    .line 10398
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$r;->mTargetPosition:I

    .line 10399
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$r;->mPendingInitialRun:Z

    .line 10400
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$r;->mRunning:Z

    .line 10402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$h;

    # invokes: Landroid/support/v7/widget/RecyclerView$h;->onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$r;)V
    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->access$1400(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 10404
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$h;

    .line 10405
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
