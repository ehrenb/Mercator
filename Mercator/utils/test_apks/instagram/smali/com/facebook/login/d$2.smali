.class Lcom/facebook/login/d$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/login/LoginClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/login/d;


# direct methods
.method constructor <init>(Lcom/facebook/login/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/login/d$2;->b:Lcom/facebook/login/d;

    iput-object p2, p0, Lcom/facebook/login/d$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/login/d$2;->a:Landroid/view/View;

    sget v1, Lcom/facebook/s$c;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/login/d$2;->a:Landroid/view/View;

    sget v1, Lcom/facebook/s$c;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method
