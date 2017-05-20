.class public Lcm/aptoide/accountmanager/AptoideAccountManager;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;,
        Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateStore;,
        Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateProfile;,
        Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;
    }
.end annotation


# static fields
.field public static final ACCOUNT_REMOVED_BROADCAST_KEY:Ljava/lang/String; = "cm.aptoide.accountmanager.removedaccount.broadcast"

.field public static final LOGIN:Ljava/lang/String;

.field public static final LOGIN_CANCELLED:Ljava/lang/String;

.field public static final LOGOUT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static analytics:Lcm/aptoide/accountmanager/Analytics;

.field private static final aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private static final instance:Lcm/aptoide/accountmanager/AptoideAccountManager;

.field private static mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

.field private static userIsLoggedIn:Z


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".accountmanager.broadcast.login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".accountmanager.broadcast.LOGIN_CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN_CANCELLED:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".accountmanager.broadcast.logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    .line 101
    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;-><init>()V

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->instance:Lcm/aptoide/accountmanager/AptoideAccountManager;

    .line 102
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 103
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 105
    const-class v0, Lcm/aptoide/accountmanager/AptoideAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    sput-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->saveUserInfo(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V

    return-void
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    :cond_0
    const-string v0, "access_token"

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserStringFromAndroidAccountManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setAccessToken(Ljava/lang/String;)V

    .line 904
    :cond_1
    return-object v0
.end method

.method static getAnalytics()Lcm/aptoide/accountmanager/Analytics;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->analytics:Lcm/aptoide/accountmanager/Analytics;

    return-object v0
.end method

.method static getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->instance:Lcm/aptoide/accountmanager/AptoideAccountManager;

    return-object v0
.end method

.method public static getLoginMode()Lcm/aptoide/accountmanager/ws/LoginMode;
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getLoginMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v0

    return-object v0
.end method

.method private static getNewAccessTokenFromRefreshToken(Ljava/lang/String;Lrx/b/b;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->observe()Lrx/d;

    move-result-object v0

    .line 544
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 546
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 552
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private static getOnErrorAction(Landroid/content/Context;)Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$3;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getRefreshToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    :cond_0
    const-string v0, "refresh_token"

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserStringFromAndroidAccountManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setRefreshToken(Ljava/lang/String;)V

    .line 528
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    :cond_2
    :try_start_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getRefreshTokenFromAccountManager()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_3
    :goto_0
    return-object v0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getRefreshTokenFromAccountManager()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 574
    sget-object v1, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 575
    aget-object v1, v1, v3

    const-string v2, "Full access"

    .line 576
    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 578
    return-object v0
.end method

.method public static getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcm/aptoide/accountmanager/util/UserCompleteData;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;-><init>()V

    .line 462
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setId(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setUserName(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setUserEmail(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setQueueName(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setUserAvatar(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setUserRepo(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getMatureSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setMatureSwitch(Z)V

    .line 469
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getRepoAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->setUserAvatarRepo(Ljava/lang/String;)V

    .line 470
    return-object v0
.end method

.method public static getUserEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 608
    sget-object v2, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 609
    array-length v2, v1

    if-lez v2, :cond_1

    .line 610
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 611
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserEmail(Ljava/lang/String;)V

    .line 614
    :cond_1
    return-object v0
.end method

.method public static getUserRepos()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/Subscription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {}, Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;->of()Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;->observe()Lrx/d;

    move-result-object v0

    .line 786
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$14;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 787
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private static getUserStringFromAndroidAccountManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 565
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 566
    sget-object v1, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 568
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static has1number1letter(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 740
    .line 743
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-char v7, v5, v4

    .line 744
    if-nez v2, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 745
    if-eqz v0, :cond_1

    .line 761
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v2, v1

    .line 743
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 747
    :cond_3
    if-nez v0, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 748
    if-nez v2, :cond_0

    move v0, v1

    .line 749
    goto :goto_2

    .line 752
    :cond_4
    const-string v4, "!"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "@"

    .line 753
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "#"

    .line 754
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "$"

    .line 755
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "#"

    .line 756
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "*"

    .line 757
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v0, v1

    .line 761
    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_0

    :cond_7
    move v1, v3

    goto :goto_1
.end method

.method public static invalidateAccessToken(Landroid/content/Context;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 515
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$6;->lambdaFactory$(Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateAccessTokenSync(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "This method shouldn\'t be called on ui thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getOnErrorAction(Landroid/content/Context;)Lrx/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getNewAccessTokenFromRefreshToken(Ljava/lang/String;Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isLoggedIn()Z
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 149
    sget-object v1, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMatureSwitchOn()Z
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getMatureSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$addLocalUserAccount$17(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 873
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 874
    return-void
.end method

.method static synthetic lambda$addLocalUserAccount$18(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNewAccessTokenFromRefreshToken$10(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x0

    const-string v1, "access_token"

    invoke-static {p0, v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setAccessTokenOnLocalAccount(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 549
    invoke-static {p0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setAccessToken(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method static synthetic lambda$getUserRepos$16(Lcm/aptoide/accountmanager/ws/responses/GetUserRepoSubscription;)Ljava/util/List;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/GetUserRepoSubscription;->getSubscription()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$invalidateAccessToken$8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "This method shouldn\'t be called on ui thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$invalidateAccessToken$9(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2

    .prologue
    .line 517
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getOnErrorAction(Landroid/content/Context;)Lrx/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getNewAccessTokenFromRefreshToken(Ljava/lang/String;Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$login$0()Landroid/content/IntentFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN_CANCELLED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$login$3(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    invoke-direct {v0, p0, p1, v1, v1}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;->lambdaFactory$(Landroid/content/Context;)Lrx/b/a;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$22;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$loginUserCredentials$6(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V
    .locals 7

    .prologue
    .line 344
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess() called with: oAuth = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p5}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p5}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setAccessToken(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p5}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p5}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 349
    invoke-virtual/range {v0 .. v6}, Lcm/aptoide/accountmanager/AptoideAccountManager;->addLocalUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lrx/d;

    move-result-object v0

    invoke-static {p5, p3, p4}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$19;->lambdaFactory$(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {p4}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;->lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 376
    :goto_0
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "Error while adding the local account. Probably context was null"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 370
    :cond_0
    if-eqz p4, :cond_1

    .line 371
    invoke-virtual {p4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 374
    :cond_1
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$null$1(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/content/Intent;)Lrx/d;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN_CANCELLED:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "User cancelled login."

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "User logged out."

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$null$4(Lcm/aptoide/accountmanager/ws/responses/OAuth;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 351
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "access_token"

    invoke-static {v0, v1, v2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setAccessTokenOnLocalAccount(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 353
    invoke-static {p1}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setLoginMode(Lcm/aptoide/accountmanager/ws/LoginMode;)V

    .line 354
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginSuccess(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 358
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 360
    :cond_1
    return-void
.end method

.method static synthetic lambda$null$5(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 361
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->removeLocalAccount()V

    .line 362
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 364
    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    :cond_0
    return-void
.end method

.method static synthetic lambda$refreshUserInfoData$19(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 889
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 890
    return-void
.end method

.method static synthetic lambda$registerUserUsingWebServices$12(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V
    .locals 3

    .prologue
    .line 658
    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 661
    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getErrors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 660
    invoke-interface {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    .line 662
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 678
    :goto_0
    return-void

    .line 664
    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-interface {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    .line 665
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 668
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 669
    const-string v1, "aptoide_login_user_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v1, "aptoide_login_password"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v1, "aptoide_login_refresh_token"

    .line 672
    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getRefresh_token()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "aptoide_login_access_token"

    .line 674
    invoke-virtual {p4}, Lcm/aptoide/accountmanager/ws/responses/OAuth;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterSuccess(Landroid/os/Bundle;)V

    .line 676
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic lambda$registerUserUsingWebServices$13(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 679
    instance-of v0, p4, Landroid/accounts/NetworkErrorException;

    if-eqz v0, :cond_0

    .line 680
    sget v0, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-interface {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    .line 682
    :cond_0
    instance-of v0, p4, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 683
    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_1
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 686
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 687
    return-void
.end method

.method static synthetic lambda$setupRegisterUser$11(Ljava/lang/ref/WeakReference;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

    .line 642
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 645
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 646
    invoke-static {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->registerUserUsingWebServices(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;)V

    .line 648
    :cond_0
    return-void
.end method

.method static synthetic lambda$subscribeStore$15(Ljava/lang/String;Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;)V
    .locals 3

    .prologue
    .line 772
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully subscribed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$unsubscribeStore$14(Ljava/lang/String;Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;)V
    .locals 3

    .prologue
    .line 766
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully unsubscribed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$updateMatureSwitch$7(ZLjava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 495
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update mature switch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 497
    return-void
.end method

.method public static login(Landroid/content/Context;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$1;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;->lambdaFactory$(Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    .line 318
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 317
    invoke-static {p0, p1, p2, p3, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 319
    return-void
.end method

.method static loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    if-eqz p4, :cond_1

    .line 334
    invoke-static {p4}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    move-object v0, p4

    .line 335
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    move-object v0, v1

    .line 339
    :cond_1
    sget-object v1, Lcm/aptoide/accountmanager/AptoideAccountManager;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 341
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {p1, p2, p0, p3, v1}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v1

    .line 343
    invoke-static {p1, p2, p4, p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v2

    new-instance v3, Lcm/aptoide/accountmanager/AptoideAccountManager$2;

    invoke-direct {v3, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$2;-><init>(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 394
    return-void
.end method

.method public static logout(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->logout()V

    .line 243
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->removeLocalAccount()V

    .line 244
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    .line 245
    if-eqz p0, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 247
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 248
    check-cast v1, Landroid/support/v4/app/u;

    invoke-static {v1}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->logout(Landroid/support/v4/app/u;)V

    .line 249
    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 253
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p1, p3}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->onActivityResult(ILandroid/content/Intent;)V

    .line 301
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-static {p1, p2, p3}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->onActivityResult(IILandroid/content/Intent;)V

    .line 304
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/accountmanager/AptoideLoginUtils;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 305
    return-void
.end method

.method public static openAccountManager(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public static openAccountManager(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 169
    sget-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/accountmanager/MyAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/accountmanager/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static openAccountManager(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 1

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 192
    :cond_0
    const-string v0, "OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 194
    return-void
.end method

.method public static openAccountManager(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v1, "OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public static openAccountManager(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    sget-object v1, Lcm/aptoide/accountmanager/LoginActivity;->SKIP_BUTTON:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v1, "OPEN_MY_ACCOUNT_ON_LOGIN_SUCCESS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method public static openAccountManager(Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setMCallback(Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;)V

    .line 219
    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->ABAN:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-static {v0, p2, p3, p4, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 221
    return-void
.end method

.method public static refreshAndSaveUserInfoData()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$17;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static refreshUserInfoData()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->of(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    move-result-object v0

    .line 885
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 886
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 887
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$18;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 888
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static registerUserUsingWebServices(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;)V
    .locals 4

    .prologue
    .line 653
    invoke-interface {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-interface {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {p0, v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->validateUserCredentials(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CreateUserRequest;

    move-result-object v2

    invoke-static {p0, p1, v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->lambdaFactory$(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v3

    invoke-static {p0, v0, v1, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->lambdaFactory$(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v0

    const/4 v1, 0x1

    .line 657
    invoke-virtual {v2, v3, v0, v1}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public static removeLocalAccount()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 257
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 258
    sget-object v2, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 259
    sput-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    .line 260
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 261
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 262
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v1, v4, v7, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    .line 267
    :cond_1
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeUserEmail()V

    .line 268
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeAccessToken()V

    .line 269
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeRefreshToken()V

    .line 270
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeMatureSwitch()V

    .line 271
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeQueueName()V

    .line 272
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeUserAvatar()V

    .line 273
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeUserNickName()V

    .line 274
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeUserRepo()V

    .line 275
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->removeRepoAvatar()V

    .line 276
    return-void
.end method

.method private static saveUserInfo(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 3

    .prologue
    .line 403
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserInfo() called with: checkUserCredentialsJson = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 411
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getId()I

    move-result v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserId(I)V

    .line 413
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getQueueName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setQueueName(Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserAvatar(Ljava/lang/String;)V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setRepoAvatar(Ljava/lang/String;)V

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserRepo(Ljava/lang/String;)V

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setUserNickName(Ljava/lang/String;)V

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 435
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;->getTheme()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 437
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;->getTheme()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setRepoTheme(Ljava/lang/String;)V

    .line 440
    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 441
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccess(Ljava/lang/String;)V

    .line 444
    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 445
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccessConfirmed(Ljava/lang/Boolean;)V

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 450
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getSettings()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$Settings;->getMatureswitch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 449
    invoke-static {v0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setMatureSwitch(Z)V

    .line 453
    :cond_8
    return-void
.end method

.method static sendLoginBroadcast()V
    .locals 3

    .prologue
    .line 776
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    return-void
.end method

.method public static sendLoginCancelledBroadcast()V
    .locals 3

    .prologue
    .line 780
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN_CANCELLED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 781
    return-void
.end method

.method public static setAccessTokenOnLocalAccount(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 583
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 585
    if-nez p1, :cond_2

    .line 586
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 587
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 588
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v4, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 589
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    :cond_0
    :goto_1
    return-void

    .line 587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_2
    invoke-virtual {v0, p1, p2, p0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAnalytics(Lcm/aptoide/accountmanager/Analytics;)V
    .locals 0

    .prologue
    .line 111
    sput-object p0, Lcm/aptoide/accountmanager/AptoideAccountManager;->analytics:Lcm/aptoide/accountmanager/Analytics;

    return-void
.end method

.method public static setMCallback(Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;)V
    .locals 0

    .prologue
    .line 116
    sput-object p0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    return-void
.end method

.method static setupLogout(Landroid/support/v4/app/u;Landroid/widget/Button;)V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v1, v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/h;->a(Landroid/content/Context;)V

    .line 232
    :cond_0
    new-instance v1, Lcm/aptoide/accountmanager/AptoideAccountManager$1;

    invoke-direct {v1, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method static setupRegisterUser(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 639
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 640
    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;->lambdaFactory$(Ljava/lang/ref/WeakReference;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    return-void
.end method

.method public static subscribeStore(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 771
    invoke-static {p0, v2}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->of(Ljava/lang/String;Z)Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$13;->lambdaFactory$(Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Z)V

    .line 773
    return-void
.end method

.method public static unsubscribeStore(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->of(Ljava/lang/String;Z)Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;->lambdaFactory$(Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    const/4 v2, 0x1

    .line 766
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Z)V

    .line 768
    return-void
.end method

.method public static updateMatureSwitch(Z)V
    .locals 2

    .prologue
    .line 488
    invoke-static {p0}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setMatureSwitch(Z)V

    .line 489
    sget-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-static {p0}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->of(Z)Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 491
    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/ws/ChangeUserSettingsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 492
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 493
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;->lambdaFactory$(Z)Lrx/b/b;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 500
    :cond_0
    return-void
.end method

.method private static validateUserCredentials(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 724
    const/4 v0, 0x1

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 726
    sget v0, Lcm/aptoide/accountmanager/R$string;->no_email_and_pass_error_message:I

    invoke-interface {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    .line 727
    const/4 v0, 0x0

    .line 730
    :cond_0
    return v0
.end method

.method private static validateUserCredentials(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 700
    const/4 v1, 0x1

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 702
    sget v1, Lcm/aptoide/accountmanager/R$string;->no_email_and_pass_error_message:I

    invoke-interface {p0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    .line 715
    :goto_0
    return v0

    .line 704
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 705
    sget v1, Lcm/aptoide/accountmanager/R$string;->no_pass_error_message:I

    invoke-interface {p0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 708
    sget v1, Lcm/aptoide/accountmanager/R$string;->no_email_error_message:I

    invoke-interface {p0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    invoke-static {p2}, Lcm/aptoide/accountmanager/AptoideAccountManager;->has1number1letter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 711
    :cond_3
    sget v1, Lcm/aptoide/accountmanager/R$string;->password_validation_text:I

    invoke-interface {p0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;->onRegisterFail(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method addLocalUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 834
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 833
    invoke-virtual/range {v0 .. v6}, Lcm/aptoide/accountmanager/AptoideAccountManager;->addLocalUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method addLocalUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    if-eqz p6, :cond_1

    .line 851
    invoke-static {p6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 852
    if-eqz p3, :cond_0

    .line 857
    :goto_0
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p1, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-instance v2, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;

    invoke-direct {v2, p6}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->create()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v2

    .line 863
    invoke-virtual {v2, p2}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_1
    const-string v2, "refresh_token"

    invoke-virtual {v0, v1, v2, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {p4}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->setRefreshToken(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$15;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 874
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 876
    :goto_2
    return-object v0

    .line 852
    :cond_0
    sget-object p3, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 866
    :catch_0
    move-exception v2

    .line 867
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 876
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_2
.end method

.method getIntroducedPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    invoke-interface {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;->getIntroducedPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getIntroducedUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    invoke-interface {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;->getIntroducedUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 979
    instance-of v0, p1, Lcm/aptoide/accountmanager/LoginActivity;

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    .line 982
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 976
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 960
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method onLoginFail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 908
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    invoke-interface {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;->onLoginFail(Ljava/lang/String;)V

    .line 909
    :cond_0
    return-void
.end method

.method onLoginSuccess()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    sput-boolean v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    .line 941
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    invoke-interface {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;->onLoginSuccess()V

    .line 942
    return-void
.end method

.method onLoginSuccess(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x1

    .line 913
    sput-boolean v3, Lcm/aptoide/accountmanager/AptoideAccountManager;->userIsLoggedIn:Z

    .line 915
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    if-eqz v0, :cond_0

    .line 916
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    invoke-interface {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;->onLoginSuccess()V

    .line 918
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->analytics:Lcm/aptoide/accountmanager/Analytics;

    if-eqz v0, :cond_1

    .line 919
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->analytics:Lcm/aptoide/accountmanager/Analytics;

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/LoginMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/accountmanager/Analytics;->login(Ljava/lang/String;)V

    .line 921
    :cond_1
    const-string v0, "signup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcm/aptoide/accountmanager/CreateUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 923
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const-string v1, "aptoide_login_user_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string v1, "aptoide_login_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v1, "aptoide_login_access_token"

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 930
    :cond_2
    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->FACEBOOK:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {p1, v0}, Lcm/aptoide/accountmanager/ws/LoginMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcm/aptoide/accountmanager/ws/LoginMode;->GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {p1, v0}, Lcm/aptoide/accountmanager/ws/LoginMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 931
    :cond_3
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 932
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcm/aptoide/accountmanager/LoggedInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 934
    const-string v1, "facebook_google"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 937
    :cond_4
    return-void
.end method

.method sendRemoveLocalAccountBroadcaster()V
    .locals 2

    .prologue
    .line 945
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 946
    const-string v1, "cm.aptoide.accountmanager.removedaccount.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    return-void
.end method

.method protected setupLogins(Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;Landroid/support/v4/app/u;Lcom/facebook/login/widget/LoginButton;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 803
    sput-object p1, Lcm/aptoide/accountmanager/AptoideAccountManager;->mCallback:Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;

    .line 804
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 805
    sget v0, Lcm/aptoide/accountmanager/R$id;->g_sign_in_button:I

    invoke-virtual {p2, v0}, Landroid/support/v4/app/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 806
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v1, v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-static {p2}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->isGoogleEnabledOnCurrentDevice(Landroid/support/v4/app/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-static {p2, v0}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->setUpGoogle(Landroid/support/v4/app/u;Landroid/view/View;)V

    .line 812
    :goto_0
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-static {p2, p3}, Lcm/aptoide/accountmanager/FacebookLoginUtils;->setupFacebook(Landroid/app/Activity;Lcom/facebook/login/widget/LoginButton;)V

    .line 817
    :goto_1
    invoke-static {p2, p4, p5}, Lcm/aptoide/accountmanager/AptoideLoginUtils;->setupAptoideLogin(Landroid/app/Activity;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 818
    invoke-virtual {p2}, Landroid/support/v4/app/u;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 819
    return-void

    .line 810
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p3, v3}, Lcom/facebook/login/widget/LoginButton;->setVisibility(I)V

    goto :goto_1
.end method
