.class public Lcm/aptoide/accountmanager/MyAccountActivity;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "MyAccountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLogout:Landroid/widget/Button;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUsernameTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/accountmanager/MyAccountActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/MyAccountActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/accountmanager/BaseActivity;-><init>()V

    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar_login:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 73
    sget v0, Lcm/aptoide/accountmanager/R$id;->button_logout:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mLogout:Landroid/widget/Button;

    .line 74
    sget v0, Lcm/aptoide/accountmanager/R$id;->username:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mUsernameTextview:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 80
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 81
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 82
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 83
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "My Account"

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcm/aptoide/accountmanager/R$layout;->my_account_activity:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->bindViews()V

    .line 28
    invoke-direct {p0}, Lcm/aptoide/accountmanager/MyAccountActivity;->setupToolbar()V

    .line 29
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mLogout:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setupLogout(Landroid/support/v4/app/u;Landroid/widget/Button;)V

    .line 30
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity;->mUsernameTextview:Landroid/widget/TextView;

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_user_name:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcm/aptoide/accountmanager/MyAccountActivity$1;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/MyAccountActivity$1;-><init>(Lcm/aptoide/accountmanager/MyAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_access_token:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcm/aptoide/accountmanager/MyAccountActivity$2;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/MyAccountActivity$2;-><init>(Lcm/aptoide/accountmanager/MyAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_invalidate_token:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcm/aptoide/accountmanager/MyAccountActivity$3;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/MyAccountActivity$3;-><init>(Lcm/aptoide/accountmanager/MyAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_refresh_token:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcm/aptoide/accountmanager/MyAccountActivity$4;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/MyAccountActivity$4;-><init>(Lcm/aptoide/accountmanager/MyAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcm/aptoide/accountmanager/BaseActivity;->onResume()V

    .line 89
    sget-object v0, Lcm/aptoide/accountmanager/MyAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
