.class Landroid/support/v7/a/c$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/a/c;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/a/c;


# direct methods
.method constructor <init>(Landroid/support/v7/a/c;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Landroid/support/v7/a/c$4;->c:Landroid/support/v7/a/c;

    iput-object p2, p0, Landroid/support/v7/a/c$4;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/a/c$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v7/a/c$4;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/a/c$4;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/a/c;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 572
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method
