.class Landroid/support/v7/a/m$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/a/m;->y()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/m;


# direct methods
.method constructor <init>(Landroid/support/v7/a/m;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Landroid/support/v7/a/m$2;->a:Landroid/support/v7/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;
    .locals 4

    .prologue
    .line 438
    invoke-virtual {p2}, Landroid/support/v4/view/bb;->b()I

    move-result v0

    .line 439
    iget-object v1, p0, Landroid/support/v7/a/m$2;->a:Landroid/support/v7/a/m;

    invoke-virtual {v1, v0}, Landroid/support/v7/a/m;->g(I)I

    move-result v1

    .line 441
    if-eq v0, v1, :cond_0

    .line 443
    invoke-virtual {p2}, Landroid/support/v4/view/bb;->a()I

    move-result v0

    .line 445
    invoke-virtual {p2}, Landroid/support/v4/view/bb;->c()I

    move-result v2

    .line 446
    invoke-virtual {p2}, Landroid/support/v4/view/bb;->d()I

    move-result v3

    .line 442
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/bb;->a(IIII)Landroid/support/v4/view/bb;

    move-result-object p2

    .line 450
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;

    move-result-object v0

    return-object v0
.end method
