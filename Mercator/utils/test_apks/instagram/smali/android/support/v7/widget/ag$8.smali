.class Landroid/support/v7/widget/ag$8;
.super Landroid/support/v7/widget/ag$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ag;->a(Landroid/support/v7/widget/ag$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ag$a;

.field final synthetic b:Landroid/support/v4/view/au;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/ag;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ag;Landroid/support/v7/widget/ag$a;Landroid/support/v4/view/au;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Landroid/support/v7/widget/ag$8;->d:Landroid/support/v7/widget/ag;

    iput-object p2, p0, Landroid/support/v7/widget/ag$8;->a:Landroid/support/v7/widget/ag$a;

    iput-object p3, p0, Landroid/support/v7/widget/ag$8;->b:Landroid/support/v4/view/au;

    iput-object p4, p0, Landroid/support/v7/widget/ag$8;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v7/widget/ag$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->d:Landroid/support/v7/widget/ag;

    iget-object v1, p0, Landroid/support/v7/widget/ag$8;->a:Landroid/support/v7/widget/ag$a;

    iget-object v1, v1, Landroid/support/v7/widget/ag$a;->b:Landroid/support/v7/widget/RecyclerView$v;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ag;->b(Landroid/support/v7/widget/RecyclerView$v;Z)V

    .line 377
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->b:Landroid/support/v4/view/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/au;->a(Landroid/support/v4/view/ay;)Landroid/support/v4/view/au;

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ae;->c(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ae;->a(Landroid/view/View;F)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ae;->b(Landroid/view/View;F)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->d:Landroid/support/v7/widget/ag;

    iget-object v1, p0, Landroid/support/v7/widget/ag$8;->a:Landroid/support/v7/widget/ag$a;

    iget-object v1, v1, Landroid/support/v7/widget/ag$a;->b:Landroid/support/v7/widget/RecyclerView$v;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ag;->a(Landroid/support/v7/widget/RecyclerView$v;Z)V

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->d:Landroid/support/v7/widget/ag;

    iget-object v0, v0, Landroid/support/v7/widget/ag;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ag$8;->a:Landroid/support/v7/widget/ag$a;

    iget-object v1, v1, Landroid/support/v7/widget/ag$a;->b:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Landroid/support/v7/widget/ag$8;->d:Landroid/support/v7/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/widget/ag;->c()V

    .line 387
    return-void
.end method
