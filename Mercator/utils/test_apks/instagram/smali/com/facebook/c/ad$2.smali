.class Lcom/facebook/c/ad$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/ad;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/ad;


# direct methods
.method constructor <init>(Lcom/facebook/c/ad;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/facebook/c/ad$2;->a:Lcom/facebook/c/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/c/ad$2;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->cancel()V

    .line 426
    return-void
.end method
