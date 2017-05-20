.class public Lcm/aptoide/pt/v8engine/repository/SocialRepository;
.super Ljava/lang/Object;
.source "SocialRepository.java"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 30
    return-void
.end method

.method static synthetic lambda$like$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$7(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$share$3(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$share$9(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method synthetic lambda$like$4(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/BaseV7Response;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$null$6(Lcm/aptoide/pt/model/v7/BaseV7Response;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$share$2(ZLjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 4

    .prologue
    .line 38
    if-eqz p1, :cond_0

    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    invoke-static {p2, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->observe()Lrx/d;

    move-result-object v1

    invoke-static {p0, p4}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/model/v7/BaseV7Response;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 42
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 44
    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccess(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccessConfirmed(Ljava/lang/Boolean;)V

    .line 46
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 39
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$share$8(ZLjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 4

    .prologue
    .line 67
    if-eqz p1, :cond_0

    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->UNLISTED:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    invoke-static {p2, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest;->observe()Lrx/d;

    move-result-object v1

    invoke-static {p0, p4}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/model/v7/BaseV7Response;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 73
    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccess(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setUserAccessConfirmed(Ljava/lang/Boolean;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/BaseV7Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 68
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public like(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    .line 53
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->of(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest;->observe()Lrx/d;

    move-result-object v0

    .line 55
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 59
    return-void
.end method

.method public share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest;->of(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest;->observe()Lrx/d;

    move-result-object v2

    invoke-static {p0, p3, v1, v0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;ZLjava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 37
    invoke-virtual {v2, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 47
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p1, v0, p2, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->observe()Lrx/d;

    move-result-object v2

    invoke-static {p0, p3, v1, v0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;ZLjava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/SocialRepository$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 66
    invoke-virtual {v2, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 77
    return-void
.end method
