.class Lcom/facebook/c/ad$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/ad;->onCreate(Landroid/os/Bundle;)V
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
    .line 280
    iput-object p1, p0, Lcom/facebook/c/ad$1;->a:Lcom/facebook/c/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/c/ad$1;->a:Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->cancel()V

    .line 284
    return-void
.end method
