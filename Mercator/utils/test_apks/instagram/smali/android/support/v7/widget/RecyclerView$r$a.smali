.class public Landroid/support/v7/widget/RecyclerView$r$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 10584
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$r$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10585
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10569
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    .line 10573
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    .line 10577
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    .line 10604
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    .line 10605
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    .line 10606
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    .line 10607
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    .line 10608
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10666
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    if-ge v0, v1, :cond_0

    .line 10667
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10669
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    if-ge v0, v1, :cond_1

    .line 10670
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10672
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 10626
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    .line 10627
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 10725
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    .line 10726
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    .line 10727
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    .line 10728
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    .line 10729
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    .line 10730
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10634
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    if-ltz v0, :cond_0

    .line 10635
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    .line 10636
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    .line 10637
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    .line 10638
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    .line 10663
    :goto_0
    return-void

    .line 10641
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    if-eqz v0, :cond_4

    .line 10642
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r$a;->b()V

    .line 10643
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 10644
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 10645
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$u;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$u;->b(II)V

    .line 10652
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    .line 10653
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 10656
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10659
    :cond_1
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$r$a;->f:Z

    goto :goto_0

    .line 10647
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$u;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$u;->a(III)V

    goto :goto_1

    .line 10650
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/RecyclerView$u;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$r$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$r$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$u;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 10661
    :cond_4
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$r$a;->g:I

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 10630
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
