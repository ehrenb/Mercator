.class final Landroid/support/v4/view/ax$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ax;->a(Landroid/view/View;Landroid/support/v4/view/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ba;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ba;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Landroid/support/v4/view/ax$1;->a:Landroid/support/v4/view/ba;

    iput-object p2, p0, Landroid/support/v4/view/ax$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Landroid/support/v4/view/ax$1;->a:Landroid/support/v4/view/ba;

    iget-object v1, p0, Landroid/support/v4/view/ax$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ba;->a(Landroid/view/View;)V

    .line 31
    return-void
.end method
