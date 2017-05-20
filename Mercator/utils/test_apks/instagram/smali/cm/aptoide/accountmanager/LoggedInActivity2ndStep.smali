.class public Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "LoggedInActivity2ndStep.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private mContinueButton:Landroid/widget/Button;

.field private mPrivateProfile:Landroid/widget/Button;

.field private mSubscriptions:Lrx/j/b;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private pleaseWaitDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 26
    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    sget v0, Lcm/aptoide/accountmanager/R$id;->logged_in_continue:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mContinueButton:Landroid/widget/Button;

    .line 56
    sget v0, Lcm/aptoide/accountmanager/R$id;->logged_in_private_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mPrivateProfile:Landroid/widget/Button;

    .line 57
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 58
    return-void
.end method

.method private goTo()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebook_google"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->updateUserInfo()V

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->finish()V

    goto :goto_0
.end method

.method static synthetic lambda$updateUserInfo$7(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setupListeners()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mContinueButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 88
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mPrivateProfile:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$2;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 113
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private updateUserInfo()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$3;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 136
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_profile_logged_in_activity_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcm/aptoide/accountmanager/R$layout;->logged_in_second_screen:I

    return v0
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->TAG:Ljava/lang/String;

    const-string v1, "user is public"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget v0, Lcm/aptoide/accountmanager/R$string;->successful:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :goto_0
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->goTo()V

    .line 84
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->TAG:Ljava/lang/String;

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

    .line 80
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->goTo()V

    .line 86
    return-void
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->TAG:Ljava/lang/String;

    const-string v1, "user is private"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget v0, Lcm/aptoide/accountmanager/R$string;->successful:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    :goto_0
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->goTo()V

    .line 108
    return-void

    .line 102
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user is private: error: "

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

    .line 103
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method synthetic lambda$null$4(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->goTo()V

    .line 111
    return-void
.end method

.method synthetic lambda$setupListeners$2(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 68
    .line 69
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    .line 70
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 72
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 87
    return-void
.end method

.method synthetic lambda$setupListeners$5(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 90
    .line 91
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    .line 92
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 94
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 95
    invoke-virtual {v1}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$5;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$6;->lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 112
    return-void
.end method

.method synthetic lambda$updateUserInfo$6(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->pleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->finish()V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->setContentView(I)V

    .line 39
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->mSubscriptions:Lrx/j/b;

    .line 40
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->bindViews()V

    .line 41
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->setupToolbar()V

    .line 42
    invoke-direct {p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->setupListeners()V

    .line 43
    return-void
.end method
