.class Landroid/support/v7/a/m$b$1;
.super Landroid/support/v4/view/az;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/a/m$b;->a(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/m$b;


# direct methods
.method constructor <init>(Landroid/support/v7/a/m$b;)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    invoke-direct {p0}, Landroid/support/v4/view/az;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1806
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1807
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1808
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1812
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1813
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/au;->a(Landroid/support/v4/view/ay;)Landroid/support/v4/view/au;

    .line 1814
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iput-object v2, v0, Landroid/support/v7/a/m;->q:Landroid/support/v4/view/au;

    .line 1815
    return-void

    .line 1809
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Landroid/support/v7/a/m$b$1;->a:Landroid/support/v7/a/m$b;

    iget-object v0, v0, Landroid/support/v7/a/m$b;->a:Landroid/support/v7/a/m;

    iget-object v0, v0, Landroid/support/v7/a/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ae;->w(Landroid/view/View;)V

    goto :goto_0
.end method
