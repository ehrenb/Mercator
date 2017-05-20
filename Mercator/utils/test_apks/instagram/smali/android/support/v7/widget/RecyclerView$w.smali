.class Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w"
.end annotation


# instance fields
.field a:J

.field b:[I

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4453
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 4489
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    if-eqz v0, :cond_0

    .line 4490
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4492
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 4465
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    .line 4468
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getItemPrefetchCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4469
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    .line 4470
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$w;->e:I

    .line 4471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:J

    .line 4472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 4474
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    if-eqz v0, :cond_0

    move v0, v1

    .line 4478
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4479
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    .line 4482
    :cond_0
    return v1

    .line 4478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 4497
    :try_start_0
    const-string v0, "RV Prefetch"

    invoke-static {v0}, Landroid/support/v4/os/h;->a(Ljava/lang/String;)V

    .line 4498
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    .line 4500
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->isItemPrefetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    .line 4501
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getItemPrefetchCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    .line 4502
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->w()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 4531
    :cond_0
    invoke-static {}, Landroid/support/v4/os/h;->a()V

    .line 4533
    :goto_0
    return-void

    .line 4506
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->getItemPrefetchCount()I

    move-result v0

    .line 4510
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 4511
    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    sget-wide v4, Landroid/support/v7/widget/RecyclerView;->y:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 4531
    :cond_2
    invoke-static {}, Landroid/support/v4/os/h;->a()V

    goto :goto_0

    .line 4516
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 4517
    sget-wide v6, Landroid/support/v7/widget/RecyclerView;->y:J

    add-long/2addr v2, v6

    .line 4518
    iget-wide v6, p0, Landroid/support/v7/widget/RecyclerView$w;->a:J

    sub-long v6, v4, v6

    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->y:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_4

    sub-long/2addr v2, v4

    .line 4519
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->A()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 4531
    :cond_4
    invoke-static {}, Landroid/support/v4/os/h;->a()V

    goto :goto_0

    .line 4524
    :cond_5
    :try_start_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    array-length v1, v1

    if-ge v1, v0, :cond_7

    .line 4525
    :cond_6
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    .line 4527
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->e:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->gatherPrefetchIndices(IILandroid/support/v7/widget/RecyclerView$s;[I)I

    move-result v0

    .line 4529
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$o;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->b:[I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$o;->a([II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4531
    invoke-static {}, Landroid/support/v4/os/h;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/h;->a()V

    throw v0
.end method
