.class Landroid/support/v7/widget/u$b$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u$b;-><init>(Landroid/support/v7/widget/u;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u;

.field final synthetic b:Landroid/support/v7/widget/u$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u$b;Landroid/support/v7/widget/u;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    iput-object p2, p0, Landroid/support/v7/widget/u$b$1;->a:Landroid/support/v7/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    iget-object v0, v0, Landroid/support/v7/widget/u$b;->b:Landroid/support/v7/widget/u;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/u;->setSelection(I)V

    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    iget-object v0, v0, Landroid/support/v7/widget/u$b;->b:Landroid/support/v7/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/widget/u;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    iget-object v0, v0, Landroid/support/v7/widget/u$b;->b:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    iget-object v1, v1, Landroid/support/v7/widget/u$b;->a:Landroid/widget/ListAdapter;

    .line 719
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/u;->performItemClick(Landroid/view/View;IJ)Z

    .line 721
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u$b$1;->b:Landroid/support/v7/widget/u$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$b;->e()V

    .line 722
    return-void
.end method
