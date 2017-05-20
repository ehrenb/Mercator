.class Landroid/support/v7/a/c$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 575
    iput-object p1, p0, Landroid/support/v7/a/c$5;->c:Landroid/support/v7/a/c;

    iput-object p2, p0, Landroid/support/v7/a/c$5;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/a/c$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v7/a/c$5;->c:Landroid/support/v7/a/c;

    iget-object v0, v0, Landroid/support/v7/a/c;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v7/a/c$5;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/a/c$5;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Landroid/support/v7/a/c;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 579
    return-void
.end method
