.class public Lcm/aptoide/pt/VanillaConfiguration;
.super Ljava/lang/Object;
.source "VanillaConfiguration.java"

# interfaces
.implements Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "cm.aptoide.pt"

.field private static final AUTO_UPDATE_URL:Ljava/lang/String; = "http://imgs.aptoide.com/latest_version_v8.xml"

.field private static final DEFAULT_STORE:Ljava/lang/String; = "apps"

.field private static final FEEDBACK_EMAIL:Ljava/lang/String; = "support@aptoide.com"

.field private static final MARKETNAME:Ljava/lang/String; = "Aptoide"

.field private static final PATH_CACHE:Ljava/lang/String;

.field private static final PATH_CACHE_APKS:Ljava/lang/String;

.field private static final PATH_CACHE_IMAGES:Ljava/lang/String;

.field private static final PATH_CACHE_USER_AVATAR:Ljava/lang/String;

.field private static final PATH_SDCARD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_SDCARD:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/VanillaConfiguration;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.aptoide/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_APKS:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_IMAGES:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_avatar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_USER_AVATAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "cm.aptoide.pt"

    return-object v0
.end method

.method public getApkCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_APKS:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cm.aptoide.pt"

    return-object v0
.end method

.method public getAutoUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "http://imgs.aptoide.com/latest_version_v8.xml"

    return-object v0
.end method

.method public getAutoUpdatesSyncAdapterAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "cm.aptoide.pt.AutoUpdateProvider"

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "cm.aptoide.pt.StubProvider"

    return-object v0
.end method

.method public getDefaultStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "apps"

    return-object v0
.end method

.method public getDefaultTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "default"

    return-object v0
.end method

.method public getDefaultThemeRes()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcm/aptoide/pt/VanillaConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getThemeResource()I

    move-result v0

    return v0
.end method

.method public getExtraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeedbackEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "support@aptoide.com"

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 63
    const/high16 v0, 0x7f030000

    return v0
.end method

.method public getImagesCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_IMAGES:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Aptoide"

    return-object v0
.end method

.method public getPartnerDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "vanilla"

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPushNotificationReceiverClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getPushNotificationReceiverClass not implemented yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSearchAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "cm.aptoide.pt.SuggestionProvider"

    return-object v0
.end method

.method public getTimeLinePostsSyncAdapterAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "cm.aptoide.pt.TimelinePosts"

    return-object v0
.end method

.method public getTimelineActivitySyncAdapterAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "cm.aptoide.pt.TimelineActivity"

    return-object v0
.end method

.method public getUserAvatarCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/VanillaConfiguration;->PATH_CACHE_USER_AVATAR:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "smartphone"

    return-object v0
.end method

.method public isAlwaysUpdate()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isAllwaysUpdate()Z

    move-result v0

    return v0
.end method

.method public isCreateStoreAndSetUserPrivacyAvailable()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isLoginAvailable(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;)Z
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcm/aptoide/pt/VanillaConfiguration$1;->$SwitchMap$cm$aptoide$pt$preferences$AptoidePreferencesConfiguration$SocialLogin:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
