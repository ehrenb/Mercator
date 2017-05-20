.class public Lcm/aptoide/accountmanager/CreateUserActivity;
.super Lcm/aptoide/accountmanager/PermissionsBaseActivity;
.source "CreateUserActivity.java"

# interfaces
.implements Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateProfile;


# static fields
.field private static CREATE_USER_REQUEST_CODE:I


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private avatarImage:Landroid/widget/ImageView;

.field private avatarPath:Ljava/lang/String;

.field private content:Landroid/view/View;

.field private createButton:Landroid/widget/Button;

.field private subscriptions:Lrx/j/b;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private userAvatar:Landroid/widget/RelativeLayout;

.field private userEmail:Ljava/lang/String;

.field private userPassword:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private usernameEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 63
    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 101
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 102
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_user_image_action:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userAvatar:Landroid/widget/RelativeLayout;

    .line 103
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_user_username_inserted:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->usernameEditText:Landroid/widget/EditText;

    .line 104
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_user_create_profile:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->createButton:Landroid/widget/Button;

    .line 105
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_user_image:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarImage:Landroid/widget/ImageView;

    .line 106
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->content:Landroid/view/View;

    .line 107
    return-void
.end method

.method private getUserData()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aptoide_login_user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userEmail:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aptoide_login_password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userPassword:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private handleCreateButtonClick()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 137
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->username:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->validateProfileData()I

    .line 139
    sget v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    if-ne v0, v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait_upload:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 143
    iget-object v7, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    const-string v0, "true"

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userEmail:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userPassword:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 144
    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-static/range {v0 .. v5}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CreateUserRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {p0, v6}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$7;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x5a

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->c(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    invoke-static {p0, v6}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$8;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0, v6}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$9;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 143
    invoke-virtual {v7, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 185
    invoke-virtual {v6, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 186
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 187
    const-string v0, "true"

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userEmail:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userPassword:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 188
    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static/range {v0 .. v5}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CreateUserRequest;

    move-result-object v0

    invoke-static {p0, v6}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;)V

    goto :goto_0
.end method

.method static synthetic lambda$setupListeners$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method static synthetic lambda$setupListeners$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method

.method static synthetic lambda$showIconPropertiesError$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method static synthetic lambda$showIconPropertiesError$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method private saveUserDataOnPreferences()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserAvatar(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->username:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserNickName(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private setupListeners()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->userAvatar:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$3;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 128
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->createButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$5;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 133
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 118
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 119
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 120
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_user_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcm/aptoide/accountmanager/R$layout;->activity_create_user:I

    return v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->usernameEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$handleCreateButtonClick$10(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    sget v0, Lcm/aptoide/accountmanager/R$string;->user_upload_photo_failed:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$11;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;)Lrx/b/b;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    sget v0, Lcm/aptoide/accountmanager/R$string;->user_upload_photo_failed:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$12;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;)Lrx/b/b;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method synthetic lambda$handleCreateButtonClick$11(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 191
    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterFail(I)V

    .line 193
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    :goto_0
    return-void

    .line 195
    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterFail(I)V

    .line 196
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->saveUserDataOnPreferences()V

    .line 201
    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterSuccess(Landroid/app/ProgressDialog;)V

    .line 202
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method synthetic lambda$handleCreateButtonClick$6(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    invoke-virtual {p2}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterFail(I)V

    .line 149
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    :goto_1
    return-object v0

    .line 151
    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterFail(I)V

    .line 152
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic lambda$handleCreateButtonClick$7(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->saveUserDataOnPreferences()V

    .line 160
    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterSuccess(Landroid/app/ProgressDialog;)V

    .line 161
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    return-void
.end method

.method synthetic lambda$null$8(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->finish()V

    .line 170
    :cond_0
    return-void
.end method

.method synthetic lambda$null$9(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->finish()V

    .line 178
    :cond_0
    return-void
.end method

.method synthetic lambda$setupListeners$2(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->chooseAvatarSource()V

    return-void
.end method

.method synthetic lambda$setupListeners$4(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->handleCreateButtonClick()V

    .line 130
    return-void
.end method

.method loadImage(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransform(Landroid/net/Uri;Landroid/widget/ImageView;Z)Lcom/bumptech/glide/g/b/k;

    .line 90
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 253
    new-instance v1, Lcm/aptoide/pt/utils/FileUtils;

    invoke-direct {v1}, Lcm/aptoide/pt/utils/FileUtils;-><init>()V

    .line 254
    const/4 v0, 0x0

    .line 255
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 256
    sget-object v0, Lcm/aptoide/accountmanager/CreateUserActivity;->photoAvatar:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->createAvatarPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getPhotoFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/utils/FileUtils;->getPathAlt(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->checkAvatarRequirements(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    return-void

    .line 258
    :cond_1
    const/16 v2, 0x416

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 259
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/utils/FileUtils;->getPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->avatarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->setContentView(I)V

    .line 68
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    .line 69
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->bindViews()V

    .line 70
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getUserData()V

    .line 71
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->setupToolbar()V

    .line 72
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->setupListeners()V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 86
    return-void
.end method

.method public onRegisterFail(I)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->content:Landroid/view/View;

    invoke-static {v0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 242
    return-void
.end method

.method public onRegisterSuccess(Landroid/app/ProgressDialog;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->content:Landroid/view/View;

    sget v1, Lcm/aptoide/accountmanager/R$string;->user_created:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 230
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isCreateStoreAndSetUserPrivacyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/accountmanager/LoggedInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->finish()V

    .line 238
    return-void

    .line 234
    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_profile_pub_pri_suc_login:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginCancelledBroadcast()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    packed-switch p1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0, v2}, Lcm/aptoide/accountmanager/CreateUserActivity;->changePermissionValue(Z)V

    .line 271
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->callGallery()V

    goto :goto_0

    .line 277
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0, v2}, Lcm/aptoide/accountmanager/CreateUserActivity;->changePermissionValue(Z)V

    .line 279
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->dispatchTakePictureIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showIconPropertiesError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity;->subscriptions:Lrx/j/b;

    sget v1, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_popup_title:I

    .line 94
    invoke-virtual {p0, v1}, Lcm/aptoide/accountmanager/CreateUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {p0, v1, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 95
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 98
    return-void
.end method

.method public validateProfileData()I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getUserUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x1

    sput v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    .line 219
    :cond_0
    :goto_0
    sget v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    return v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateUserActivity;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x2

    sput v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcm/aptoide/accountmanager/CreateUserActivity;->CREATE_USER_REQUEST_CODE:I

    .line 217
    sget v0, Lcm/aptoide/accountmanager/R$string;->nothing_inserted_user:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateUserActivity;->onRegisterFail(I)V

    goto :goto_0
.end method
