.class Lcom/facebook/login/widget/LoginButton$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$1;->b:Lcom/facebook/login/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/c/k;->a(Ljava/lang/String;Z)Lcom/facebook/c/j;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$1;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$1$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$1$1;-><init>(Lcom/facebook/login/widget/LoginButton$1;Lcom/facebook/c/j;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method
