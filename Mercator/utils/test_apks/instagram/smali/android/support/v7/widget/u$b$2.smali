.class Landroid/support/v7/widget/u$b$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u$b;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    iget-object v1, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    iget-object v1, v1, Landroid/support/v7/widget/u$b;->b:Landroid/support/v7/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u$b;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$b;->e()V

    .line 813
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$b;->b()V

    .line 811
    iget-object v0, p0, Landroid/support/v7/widget/u$b$2;->a:Landroid/support/v7/widget/u$b;

    invoke-static {v0}, Landroid/support/v7/widget/u$b;->a(Landroid/support/v7/widget/u$b;)V

    goto :goto_0
.end method
