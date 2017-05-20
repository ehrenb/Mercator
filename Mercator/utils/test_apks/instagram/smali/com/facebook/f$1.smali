.class Lcom/facebook/f$1;
.super Ljava/lang/Object;
.source "FacebookButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f;


# direct methods
.method constructor <init>(Lcom/facebook/f;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    iget-object v1, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-virtual {v1}, Lcom/facebook/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/f;->a(Lcom/facebook/f;Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/f;->a(Lcom/facebook/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/f;->a(Lcom/facebook/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/f;->b(Lcom/facebook/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/facebook/f$1;->a:Lcom/facebook/f;

    invoke-static {v0}, Lcom/facebook/f;->b(Lcom/facebook/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
