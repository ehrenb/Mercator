.class Landroid/support/v7/widget/ak$2;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ak;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/v7/widget/ak;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ak;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/v7/widget/ak$2;->b:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/ak$2;->b:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ae;->H(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ak$2;->a:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/support/v7/widget/ak$2;->a:Z

    .line 108
    iget-object v1, p0, Landroid/support/v7/widget/ak$2;->b:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ae;->H(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ak$2;->a:Z

    .line 109
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ak$2;->a:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/ak$2;->b:Landroid/support/v7/widget/ak;

    invoke-static {v0}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ak;)V

    .line 112
    :cond_0
    return-void
.end method
