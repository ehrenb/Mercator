.class public Lcm/aptoide/accountmanager/AccountManagerPreferences;
.super Ljava/lang/Object;
.source "AccountManagerPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "access_token"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginMode()Lcm/aptoide/accountmanager/ws/LoginMode;
    .locals 1

    .prologue
    .line 128
    const-string v0, "aptoide_account_manager_login_mode"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/LoginMode;->valueOf(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMatureSwitch()Z
    .locals 1

    .prologue
    .line 104
    const-string v0, "aptoide_account_manager_mature_switch"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "queueName"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "refresh_token"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRepoAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "storeAvatar"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRepoTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "storeTheme"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUserAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "useravatar"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "usernameLogin"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "userId"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUserNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "username"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "userRepo"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static removeAccessToken()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "access_token"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static removeMatureSwitch()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "aptoide_account_manager_mature_switch"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method static removeQueueName()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "queueName"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static removeRefreshToken()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "refresh_token"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method static removeRepoAvatar()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "storeAvatar"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method static removeUserAvatar()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "useravatar"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static removeUserEmail()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "usernameLogin"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static removeUserNickName()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "username"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static removeUserRepo()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "userRepo"

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->remove(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static setAccessToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "access_token"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static setLoginMode(Lcm/aptoide/accountmanager/ws/LoginMode;)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "aptoide_account_manager_login_mode"

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/LoginMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static setMatureSwitch(Z)V
    .locals 1

    .prologue
    .line 108
    const-string v0, "aptoide_account_manager_mature_switch"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method static setQueueName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const-string v0, "queueName"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static setRefreshToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "refresh_token"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static setRepoAvatar(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "storeAvatar"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method static setRepoTheme(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const-string v0, "storeTheme"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static setUserAvatar(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "useravatar"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "usernameLogin"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static setUserId(I)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "userId"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static setUserNickName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const-string v0, "username"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static setUserRepo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    const-string v0, "userRepo"

    invoke-static {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
