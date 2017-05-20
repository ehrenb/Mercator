.class Landroid/support/v7/a/m$5$1;
.super Landroid/support/v4/view/az;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/a/m$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/m$5;


# direct methods
.method constructor <init>(Landroid/support/v7/a/m$5;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Landroid/support/v7/a/m$5$1;->a:Landroid/support/v7/a/m$5;

    invoke-direct {p0}, Landroid/support/v4/view/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v7/a/m$5$1;->a:Landroid/support/v7/a/m$5;

    iget-object v0, v0, Landroid/support/v7/a/m$5;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 790
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Landroid/support/v7/a/m$5$1;->a:Landroid/support/v7/a/m$5;

    iget-object v0, v0, Landroid/support/v7/a/m$5;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ae;->c(Landroid/view/View;F)V

    .line 795
    iget-object v0, p0, Landroid/support/v7/a/m$5$1;->a:Landroid/support/v7/a/m$5;

    iget-object v0, v0, Landroid/support/v7/a/m$5;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/au;->a(Landroid/support/v4/view/ay;)Landroid/support/v4/view/au;

    .line 796
    iget-object v0, p0, Landroid/support/v7/a/m$5$1;->a:Landroid/support/v7/a/m$5;

    iget-object v0, v0, Landroid/support/v7/a/m$5;->a:Landroid/support/v7/a/m;

    iput-object v2, v0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    .line 797
    return-void
.end method
