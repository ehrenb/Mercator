.class public Lcom/facebook/c/g;
.super Landroid/support/v4/app/t;
.source "FacebookDialogFragment.java"


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/c/g;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/u;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {v0}, Landroid/support/v4/app/u;->finish()V

    .line 167
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/facebook/c/g;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/support/v4/app/u;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    invoke-static {v0, p1, p2}, Lcom/facebook/c/v;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v2

    .line 153
    if-nez p2, :cond_0

    const/4 v0, -0x1

    .line 155
    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/u;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {v1}, Landroid/support/v4/app/u;->finish()V

    .line 157
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/c/g;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/c/g;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/c/g;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/c/g;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    .line 51
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/c/ad;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/c/g;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->d()V

    .line 135
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/c/g;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/support/v4/app/u;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/facebook/c/v;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    const-string v2, "is_fallback"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "params"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-static {v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const-string v0, "FacebookDialogFragment"

    const-string v2, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    invoke-static {v0, v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/support/v4/app/u;->finish()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v3, Lcom/facebook/c/ad$a;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/c/ad$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/c/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/c/g$1;-><init>(Lcom/facebook/c/g;)V

    .line 76
    invoke-virtual {v3, v0}, Lcom/facebook/c/ad$a;->a(Lcom/facebook/c/ad$c;)Lcom/facebook/c/ad$a;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/facebook/c/ad$a;->a()Lcom/facebook/c/ad;

    move-result-object v0

    .line 106
    :goto_1
    iput-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "FacebookDialogFragment"

    const-string v2, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    invoke-static {v0, v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/u;->finish()V

    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "fb%s://bridge/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/facebook/h;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v0, Lcom/facebook/c/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/facebook/c/g$2;

    invoke-direct {v1, p0}, Lcom/facebook/c/g$2;-><init>(Lcom/facebook/c/g;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c/ad;->a(Lcom/facebook/c/ad$c;)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, v1, v1}, Lcom/facebook/c/g;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/c/g;->setShowsDialog(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/c/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/c/g;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/facebook/c/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/t;->onDestroyView()V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/t;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/c/ad;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/c/g;->a:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/c/ad;

    invoke-virtual {v0}, Lcom/facebook/c/ad;->d()V

    .line 127
    :cond_0
    return-void
.end method
