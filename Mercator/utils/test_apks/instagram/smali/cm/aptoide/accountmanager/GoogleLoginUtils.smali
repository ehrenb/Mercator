.class Lcm/aptoide/accountmanager/GoogleLoginUtils;
.super Ljava/lang/Object;
.source "GoogleLoginUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/api/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field private static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field private static final REQ_SIGN_IN_GOOGLE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static activityReference:Ljava/lang/ref/WeakReference;

.field private static mResolvingError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->mResolvingError:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleErrors(Lcom/google/android/gms/auth/api/signin/b;)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/b;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v0

    const/16 v1, 0x30d5

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->TAG:Ljava/lang/String;

    const-string v1, "probably this apk is in debug mode"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    .line 121
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    .line 124
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isGoogleEnabledOnCurrentDevice(Landroid/support/v4/app/u;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 76
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static logout(Landroid/support/v4/app/u;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->setupGoogleApiClient(Landroid/support/v4/app/u;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/google/android/gms/auth/api/a;->k:Lcom/google/android/gms/auth/api/signin/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/signin/a;->b(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/d;

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->g()V

    .line 135
    return-void
.end method

.method protected static onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 104
    sget-object v0, Lcom/google/android/gms/auth/api/a;->k:Lcom/google/android/gms/auth/api/signin/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/b;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    invoke-static {v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->handleErrors(Lcom/google/android/gms/auth/api/signin/b;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-eqz v1, :cond_0

    .line 109
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: Email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Disp name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v2, v3, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onDialogDismissed()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->mResolvingError:Z

    .line 140
    return-void
.end method

.method protected static setUpGoogle(Landroid/support/v4/app/u;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->activityReference:Ljava/lang/ref/WeakReference;

    .line 52
    invoke-static {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->isGoogleEnabledOnCurrentDevice(Landroid/support/v4/app/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->TAG:Ljava/lang/String;

    const-string v1, "setUpGoogle serverId: 928466497334-7aqsaffv18r3k1ebthkchfi3nibft5vq.apps.googleusercontent.com"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->setupGoogleApiClient(Landroid/support/v4/app/u;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 58
    if-eqz p1, :cond_1

    .line 59
    new-instance v1, Lcm/aptoide/accountmanager/GoogleLoginUtils$1;

    invoke-direct {v1, v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils$1;-><init>(Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->g()V

    goto :goto_0
.end method

.method public static setupGoogleApiClient(Landroid/support/v4/app/u;)Lcom/google/android/gms/common/api/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/contacts.readonly"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v2, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "profile"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v2, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    const-string v1, "928466497334-7aqsaffv18r3k1ebthkchfi3nibft5vq.apps.googleusercontent.com"

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/android/gms/common/api/c$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/c$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcm/aptoide/accountmanager/GoogleLoginUtils;

    invoke-direct {v2}, Lcm/aptoide/accountmanager/GoogleLoginUtils;-><init>()V

    .line 87
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/api/c$a;->a(Landroid/support/v4/app/u;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/c$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/a;->f:Lcom/google/android/gms/common/api/a;

    .line 88
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/c$a;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a$a;)Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a;->b()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->e()V

    .line 92
    return-object v0
.end method

.method private showErrorDialog(I)V
    .locals 3

    .prologue
    .line 171
    new-instance v1, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;-><init>()V

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    const-string v2, "dialog_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v1, v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 176
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    const-string v2, "errordialog"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 143
    sget-boolean v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->mResolvingError:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->mResolvingError:Z

    .line 149
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 156
    sget-object v0, Lcm/aptoide/accountmanager/GoogleLoginUtils;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->setupGoogleApiClient(Landroid/support/v4/app/u;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->e()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->showErrorDialog(I)V

    .line 164
    sput-boolean v1, Lcm/aptoide/accountmanager/GoogleLoginUtils;->mResolvingError:Z

    goto :goto_0
.end method
