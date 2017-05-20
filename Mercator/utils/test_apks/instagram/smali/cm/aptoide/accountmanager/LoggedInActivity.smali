.class public Lcm/aptoide/accountmanager/LoggedInActivity;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "LoggedInActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private mContinueButton:Landroid/widget/Button;

.field private mMoreInfoButton:Landroid/widget/Button;

.field private mSubscriptions:Lrx/j/b;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private pleaseWaitDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/accountmanager/LoggedInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/LoggedInActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcm/aptoide/accountmanager/BaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 27
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 26
    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcm/aptoide/accountmanager/R$id;->logged_in_continue:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mContinueButton:Landroid/widget/Button;

    .line 55
    sget v0, Lcm/aptoide/accountmanager/R$id;->logged_in_more_info_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mMoreInfoButton:Landroid/widget/Button;

    .line 56
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    return-void
.end method

.method private goTo()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebook_google"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->updateUserInfo()V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic lambda$updateUserInfo$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setupListeners()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mContinueButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 85
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mMoreInfoButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$2;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 89
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private updateUserInfo()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$3;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 112
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_profile_logged_in_activity_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcm/aptoide/accountmanager/R$layout;->logged_in_first_screen:I

    return v0
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity;->TAG:Ljava/lang/String;

    const-string v1, "user is public"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v0, Lcm/aptoide/accountmanager/R$string;->successful:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 80
    :goto_0
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->goTo()V

    .line 81
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user is public: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->goTo()V

    .line 83
    return-void
.end method

.method synthetic lambda$setupListeners$2(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 67
    .line 68
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 71
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$5;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 84
    return-void
.end method

.method synthetic lambda$setupListeners$3(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->finish()V

    .line 88
    return-void
.end method

.method synthetic lambda$updateUserInfo$4(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->finish()V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity;->setContentView(I)V

    .line 39
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity;->mSubscriptions:Lrx/j/b;

    .line 40
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->bindViews()V

    .line 41
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->setupToolbar()V

    .line 42
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity;->setupListeners()V

    .line 43
    return-void
.end method
