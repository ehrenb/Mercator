.class public Lcm/aptoide/accountmanager/LoginActivity;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;


# static fields
.field public static final OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS:Ljava/lang/String; = "OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS"

.field public static SKIP_BUTTON:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field content:Landroid/view/View;

.field private emailBox:Landroid/widget/EditText;

.field private forgotPassword:Landroid/widget/TextView;

.field private hidePassButton:Landroid/widget/Button;

.field private mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

.field private mLoginButton:Landroid/widget/Button;

.field private mRegisterButton:Landroid/widget/Button;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private openMyAccountOnLoginSuccess:Z

.field private orMessage:Landroid/widget/TextView;

.field private password_box:Landroid/widget/EditText;

.field private setSkipButton:Z

.field private subscriptions:Lrx/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/accountmanager/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/LoginActivity;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "skip_button"

    sput-object v0, Lcm/aptoide/accountmanager/LoginActivity;->SKIP_BUTTON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcm/aptoide/accountmanager/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/accountmanager/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;

    return-object v0
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->content:Landroid/view/View;

    .line 101
    sget v0, Lcm/aptoide/accountmanager/R$id;->button_login:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 102
    sget v0, Lcm/aptoide/accountmanager/R$id;->button_register:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mRegisterButton:Landroid/widget/Button;

    .line 103
    sget v0, Lcm/aptoide/accountmanager/R$id;->fb_login_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    .line 104
    sget v0, Lcm/aptoide/accountmanager/R$id;->password:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;

    .line 105
    sget v0, Lcm/aptoide/accountmanager/R$id;->username:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->emailBox:Landroid/widget/EditText;

    .line 106
    sget v0, Lcm/aptoide/accountmanager/R$id;->btn_show_hide_pass:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->hidePassButton:Landroid/widget/Button;

    .line 107
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 108
    sget v0, Lcm/aptoide/accountmanager/R$id;->forgot_password:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->forgotPassword:Landroid/widget/TextView;

    .line 109
    sget v0, Lcm/aptoide/accountmanager/R$id;->or_message:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->orMessage:Landroid/widget/TextView;

    .line 110
    return-void
.end method

.method private setupShowHidePassButton()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->hidePassButton:Landroid/widget/Button;

    new-instance v1, Lcm/aptoide/accountmanager/LoginActivity$1;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/LoginActivity$1;-><init>(Lcm/aptoide/accountmanager/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 142
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 143
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->setSkipButton:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 147
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    return-void
.end method

.method private setupViewListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lcm/aptoide/accountmanager/R$string;->forgot_passwd:I

    invoke-virtual {p0, v1}, Lcm/aptoide/accountmanager/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    iget-object v1, p0, Lcm/aptoide/accountmanager/LoginActivity;->forgotPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->forgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcm/aptoide/accountmanager/LoginActivity$2;

    invoke-direct {v1, p0}, Lcm/aptoide/accountmanager/LoginActivity$2;-><init>(Lcm/aptoide/accountmanager/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget v0, Lcm/aptoide/accountmanager/R$string;->login:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroducedPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroducedUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->emailBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcm/aptoide/accountmanager/R$layout;->login_activity_layout:I

    return v0
.end method

.method public isSocialLoginsAvailable()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->values()[Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    move-result-object v2

    .line 113
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 115
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v5

    invoke-interface {v5, v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    sget-object v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    if-ne v4, v0, :cond_1

    .line 117
    invoke-static {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->isGoogleEnabledOnCurrentDevice(Landroid/support/v4/app/u;)Z

    move-result v0

    .line 122
    :cond_0
    :goto_1
    return v0

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method synthetic lambda$onLoginSuccess$0(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->finish()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/accountmanager/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginCancelledBroadcast()V

    .line 177
    invoke-super {p0}, Lcm/aptoide/accountmanager/BaseActivity;->onBackPressed()V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->subscriptions:Lrx/j/b;

    .line 65
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/h;->a(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoginActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoginActivity;->bindViews()V

    .line 69
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->openMyAccountOnLoginSuccess:Z

    .line 70
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcm/aptoide/accountmanager/LoginActivity;->SKIP_BUTTON:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->setSkipButton:Z

    .line 71
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    iget-object v3, p0, Lcm/aptoide/accountmanager/LoginActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    iget-object v4, p0, Lcm/aptoide/accountmanager/LoginActivity;->mLoginButton:Landroid/widget/Button;

    iget-object v5, p0, Lcm/aptoide/accountmanager/LoginActivity;->mRegisterButton:Landroid/widget/Button;

    move-object v1, p0

    move-object v2, p0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setupLogins(Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;Landroid/support/v4/app/u;Lcom/facebook/login/widget/LoginButton;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 73
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->isSocialLoginsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->orMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoginActivity;->setupShowHidePassButton()V

    .line 77
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoginActivity;->setupToolbar()V

    .line 78
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoginActivity;->setupViewListeners()V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->setSkipButton:Z

    if-eqz v0, :cond_0

    .line 54
    sget v0, Lcm/aptoide/accountmanager/R$string;->wizard_skip:I

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 167
    invoke-super {p0}, Lcm/aptoide/accountmanager/BaseActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->content:Landroid/view/View;

    invoke-static {v0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onLoginSuccess()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity;->subscriptions:Lrx/j/b;

    sget v1, Lcm/aptoide/accountmanager/R$string;->login_successful:I

    .line 182
    invoke-static {p0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoginActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/LoginActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 91
    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    sget v1, Lcm/aptoide/accountmanager/R$id;->home:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginCancelledBroadcast()V

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoginActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
