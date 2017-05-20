.class Landroid/support/v7/widget/u$1;
.super Landroid/support/v7/widget/ak;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u$b;

.field final synthetic b:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/view/View;Landroid/support/v7/widget/u$b;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Landroid/support/v7/widget/u$1;->b:Landroid/support/v7/widget/u;

    iput-object p3, p0, Landroid/support/v7/widget/u$1;->a:Landroid/support/v7/widget/u$b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ak;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/s;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/u$1;->a:Landroid/support/v7/widget/u$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/u$1;->b:Landroid/support/v7/widget/u;

    iget-object v0, v0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/u$1;->b:Landroid/support/v7/widget/u;

    iget-object v0, v0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/u$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/u$b;->d()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
