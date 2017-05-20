.class Landroid/support/design/widget/Snackbar$6;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/Snackbar$SnackbarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$6;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/Snackbar$6$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$6$1;-><init>(Landroid/support/design/widget/Snackbar$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    :cond_0
    return-void
.end method
