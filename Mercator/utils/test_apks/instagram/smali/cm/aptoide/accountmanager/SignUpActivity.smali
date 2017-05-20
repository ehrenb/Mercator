.class public Lcm/aptoide/accountmanager/SignUpActivity;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "SignUpActivity.java"

# interfaces
.implements Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;


# instance fields
.field private SIGNUP:Ljava/lang/String;

.field private content:Landroid/view/View;

.field private emailBox:Landroid/widget/EditText;

.field private hidePasswordButton:Landroid/widget/Button;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private password_box:Landroid/widget/EditText;

.field private signUpButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/accountmanager/BaseActivity;-><init>()V

    .line 30
    const-string v0, "signup"

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->SIGNUP:Ljava/lang/String;

    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->content:Landroid/view/View;

    .line 50
    sget v0, Lcm/aptoide/accountmanager/R$id;->submitCreateUser:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->signUpButton:Landroid/widget/Button;

    .line 51
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 52
    sget v0, Lcm/aptoide/accountmanager/R$id;->username:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->emailBox:Landroid/widget/EditText;

    .line 53
    sget v0, Lcm/aptoide/accountmanager/R$id;->password:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    .line 54
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_show_hide_pass:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->hidePasswordButton:Landroid/widget/Button;

    .line 55
    return-void
.end method

.method private setupListeners()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->setupShowHidePassButton()V

    .line 69
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->signUpButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setupRegisterUser(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/widget/Button;)V

    .line 70
    return-void
.end method

.method private setupShowHidePassButton()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->hidePasswordButton:Landroid/widget/Button;

    invoke-static {p0}, Lcm/aptoide/accountmanager/SignUpActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/SignUpActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 62
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 63
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget v0, Lcm/aptoide/accountmanager/R$string;->register:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcm/aptoide/accountmanager/R$layout;->sign_up_activity_layout:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->emailBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->emailBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$setupShowHidePassButton$0(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 75
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 76
    :goto_0
    if-eqz v1, :cond_1

    sget v0, Lcm/aptoide/accountmanager/R$drawable;->icon_closed_eye:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    iget-object v3, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 80
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->password_box:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 81
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Lcm/aptoide/accountmanager/R$drawable;->icon_open_eye:I

    goto :goto_1

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/SignUpActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->bindViews()V

    .line 36
    invoke-direct {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->setupToolbar()V

    .line 37
    invoke-direct {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->setupListeners()V

    .line 38
    return-void
.end method

.method public onRegisterFail(I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->content:Landroid/view/View;

    invoke-static {v0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 98
    return-void
.end method

.method public onRegisterSuccess(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcm/aptoide/accountmanager/SignUpActivity;->content:Landroid/view/View;

    sget v1, Lcm/aptoide/accountmanager/R$string;->user_created:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 86
    const-string v0, "aptoide_login_from"

    iget-object v1, p0, Lcm/aptoide/accountmanager/SignUpActivity;->SIGNUP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/accountmanager/SignUpActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAnalytics()Lcm/aptoide/accountmanager/Analytics;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcm/aptoide/accountmanager/Analytics;->signUp()V

    .line 92
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/SignUpActivity;->finish()V

    .line 94
    return-void
.end method
