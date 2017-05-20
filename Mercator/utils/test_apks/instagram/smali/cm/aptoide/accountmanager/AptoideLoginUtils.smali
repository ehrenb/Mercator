.class Lcm/aptoide/accountmanager/AptoideLoginUtils;
.super Ljava/lang/Object;
.source "AptoideLoginUtils.java"


# static fields
.field static final APTOIDE_LOGIN_ACCESS_TOKEN_KEY:Ljava/lang/String; = "aptoide_login_access_token"

.field static final APTOIDE_LOGIN_FROM:Ljava/lang/String; = "aptoide_login_from"

.field static final APTOIDE_LOGIN_PASSWORD_KEY:Ljava/lang/String; = "aptoide_login_password"

.field static final APTOIDE_LOGIN_REFRESH_TOKEN_KEY:Ljava/lang/String; = "aptoide_login_refresh_token"

.field static final APTOIDE_LOGIN_USER_NAME_KEY:Ljava/lang/String; = "aptoide_login_user_name"

.field public static final IS_FACEBOOK_OR_GOOGLE:Ljava/lang/String; = "facebook_google"

.field private static REQ_SIGNUP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x8

    sput v0, Lcm/aptoide/accountmanager/AptoideLoginUtils;->REQ_SIGNUP:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcm/aptoide/accountmanager/AptoideLoginUtils;->REQ_SIGNUP:I

    return v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 61
    sget v0, Lcm/aptoide/accountmanager/AptoideLoginUtils;->REQ_SIGNUP:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 62
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    const-string v1, "aptoide_login_user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    const-string v2, "aptoide_login_password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    const-string v4, "aptoide_login_refresh_token"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    const-string v5, "aptoide_login_access_token"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    const-string v6, "aptoide_login_from"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 68
    invoke-static {v5}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setAccessToken(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/accountmanager/AptoideAccountManager;->addLocalUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    .line 71
    const-string v0, "access_token"

    invoke-static {v5, v3, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setAccessTokenOnLocalAccount(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    sget-object v3, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    .line 74
    invoke-virtual {v0, v3, v6, v1, v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginSuccess(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method static setupAptoideLogin(Landroid/app/Activity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcm/aptoide/accountmanager/AptoideLoginUtils$1;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/AptoideLoginUtils$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcm/aptoide/accountmanager/AptoideLoginUtils$2;

    invoke-direct {v1, v0}, Lcm/aptoide/accountmanager/AptoideLoginUtils$2;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
