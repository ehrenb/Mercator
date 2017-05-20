.class public Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;
.super Landroid/content/ContentProvider;
.source "ToolboxContentProvider.java"


# static fields
.field private static final BACKUP_PACKAGE:Ljava/lang/String; = "pt.aptoide.backupapps"

.field private static final CHANGE_PREFERENCE:I = 0x6

.field private static final LOGIN_NAME:I = 0x5

.field private static final LOGIN_TYPE:I = 0x4

.field private static final PASSHASH:I = 0x3

.field private static final REFRESH_TOKEN:I = 0x7

.field private static final REPO:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN:I = 0x1

.field private static final UPLOADER_PACKAGE:Ljava/lang/String; = "pt.caixamagica.aptoide.uploader"


# instance fields
.field private securityManager:Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic lambda$update$0(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 188
    const-string v0, "Please enable debug mode for toolbox to work."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    return-void
.end method

.method static synthetic lambda$update$1(Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 211
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    new-instance v0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->securityManager:Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;

    .line 63
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 65
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "token"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "refreshToken"

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "repo"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "loginType"

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "passHash"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "loginName"

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "changePreference"

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->securityManager:Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "308203643082024ca0030201020204503fc625300d06092a864886f70d01010505003073310b30090603550406130270743110300e06035504081307556e6b6e6f776e310f300d060355040713064c6973626f6e31153013060355040a130c4361697861204d61676963613110300e060355040b13074170746f696465311830160603550403130f4475617274652053696c76656972613020170d3132303833303139353933335a180f32303934313031393139353933335a3073310b30090603550406130270743110300e06035504081307556e6b6e6f776e310f300d060355040713064c6973626f6e31153013060355040a130c4361697861204d61676963613110300e060355040b13074170746f696465311830160603550403130f4475617274652053696c766569726130820122300d06092a864886f70d01010105000382010f003082010a0282010100a7032cb40819b62cd596bc1c121951724e9a7d6612222d63dab58a18970339f77911b8e2a0665aa15efb051d4dd710c99e1fcaea006a651b7c113a71649c315e27122b9e0a214a240f34559394cca116c609d5bbf670ed85c7b983f0026154278bffd2b53d8aea4735ed99c39ea45db004c16bee078bb0b40e38ae510cacd1955a4e3eb90347d344cdcce07bddb89d9cd2077558914179a8157a87eac86e1b1a07a3f697a5f3f6512e276741d76bcc0c4809117c279fbd55d8c2b3d70468fbe4869394d9f2740bcccdf727da10c06de5c6a0d2f893bce078e058604726d32ab17e3b113a3dcbe0c22f2532738cae8cc5fa98c6b8306680b07ef8f0fca5d5910b0203010001300d06092a864886f70d01010505000382010100361152e42ece11bfd72e5795c9e91079b39c5280e30e3394671ca108fd7de9c3cebef2fc2f5ba752664ba44fcddaf49e91a1d7683cafdc11275fa7c1487ae78a659a8dae5d696cd93de810c67f127568dfa60c1962ec5ad2a3ea0560f75ad4a2ea9d388d4497b561242f090de2d3347dd32494ba6305735fa21d82f037f4355583fdfb1f46a56c19526969ba5f7f556cca9b9069cd9a9e3cd566d2b8c33138609e8794fb0abb11d33ed2c507f7f7df9ce24b3b64713ccdf2450bb5ec4efedba541dce271c8b3759b340b0467c06624cd3881b769a1d4a1b1fc0bec97d6b8561b032089ab8ca108595759bbd9b95fd43a3d28f518fb9d193125c8fa9b224f831c"

    const-string v3, "pt.aptoide.backupapps"

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->checkSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->securityManager:Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "308205653082034ca00302010202044df76b53300d06092a864886f70d01010505003073310b30090603550406130270743110300e06035504081307556e6b6e6f776e310f300d060355040713064c6973626f6131153013060355040a130c4361697861204d61676963613110300e060355040b1307556e6b6e6f776e311830160603550403130f4475617274652053696c76656972613020170d3131303631343134303831395a180f32303933303830323134303831395a3073310b30090603550406130270743110300e06035504081307556e6b6e6f776e310f300d060355040713064c6973626f6131153013060355040a130c4361697861204d61676963613110300e060355040b1307556e6b6e6f776e311830160603550403130f4475617274652053696c766569726130820222300d06092a864886f70d01010105000382020f003082020a02820201026cfe7512fa0c40520971ee83e227208e072a1e1962a4fd0cd5c709e33dc45ce856e9ddc2b9a918394e96ec462d5fea2db81c443b9dbedd75a1031a1f1593b86eef83302f9ecdc0dfd227a3e11ccedb056e58c79b9177dbefba122a390dac88a90a317cb55a9171ab428b46c2e29b5d7fef2e823f5985b9c165a1edba7c82b4f8d5e3aa346996019cb8b7bcc768f5fdae15975add5e53c1fc022e4c99dababf3a80c5a09680ba4b8889cc4399940d92d11c289268d3f2671b98f871964f21c5870d9a1c72c8fbea65a637a06643f246e733fff37b7db4020fd2b6e7343fdbac2ddd20f8a48710d944d8f76432a3225f72c6a50c4e76247fb9256f294eeb9e24080ad28094fbfcfa6e4b5a85d652b1c5d967b39ee1272955a134a0ff1e89bb01f98d710204c72ca4c9dd44ecdd81358a8ef920fa371edd1bfc097c81678aa31b059b9218eba5c0ed2c209bd799a3ecab19e5e3b0e3d18029bf156b37e091969b4e5ae5024475b038b4d841e0e88580fd433154f606f1f7c14527f00509dd7448911e1ec44cb1e94f7dce59459e95438c4a245103d14fff047f97d14bf38f1802d84727b0f3aa98e02e8840892c629e303f76965e186de1d92263ec17e35aa224c33856d59095cf9195042ebfb5fd4703ef8add7ccf923640f266c22e432232f5c6b0873d99ebd509f9e66a77506eabef04ae1d9cf5edb40e13bc1cff39917da8b70203010001300d06092a864886f70d010105050003820202000069a29624d30983fdec4c4bf685f2f479214fda52e272a74ae8aee8bc7aae441ba79977cdd251cf5b21c56ee631dd1e17da28a2bd87d1190b4c1cc440140251e38af40aa694e6d3965c31b36ade9deccde0ca403639031f44f42e395b575a125cd210fd54e9ac760af1ed72c7b91f8f771074f6cafe0d28ab840510ee98a46eb84225be218ff6f90d036f47ec2e7dbfa067e9498cc633e5cab354ab86013b4d8047312643cdfbb6b3654dc26a87af0f4d83b2b0c6ad28d026483788daeda241c8e2631311e0e0d48c6f9284904cc4df114336c207e4c4f468f80f82f2d6917d8ec6b9e63fa2a0f126f668f8220667c92d26d55b5da7a4144b8693c0dec479a3c63b1d43eb96868eac1cb786e2f4b327bad553fc9ffe2dada3ab11bd6b1d7a623a92e821192b0dbcdabf0e4c361561bb5abb970d11e477050d56957fc8961106d2aaf1f209cbdde733a7a6e0577fd35d32f048e887b0e92c9415871e5b0d7458fe682256494b6c9443d04a076842d56374ee4c184a5c64a71c6818eafaa6dcbd66aae917907080d4895b7b0c941a4fae00be891666c0bdeb8b9331d0ff61d7ec2c26b80156aa64263e925dc9d84279bdb1e27e0403b57c14a1b2647a98c858ee20c92b967fb1eb963147fe390958e7c914fce69e1e2eb06139279b70a8eeabe99500ddf04223c3343e5c9b2722635856c65593aae9d2dbf3da704f79e8145f008e"

    const-string v3, "pt.caixamagica.aptoide.uploader"

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->checkSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only /token, /repo, /passHash, /loginType and /loginName supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_1
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userToken"

    aput-object v3, v2, v7

    invoke-direct {v0, v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 86
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_2
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userRefreshToken"

    aput-object v3, v2, v7

    invoke-direct {v0, v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 96
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_3
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userRepo"

    aput-object v3, v2, v7

    invoke-direct {v0, v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 105
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_4
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 112
    sget-object v0, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 113
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getLoginMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v3

    .line 114
    array-length v0, v2

    if-lez v0, :cond_6

    if-eqz v3, :cond_6

    .line 115
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "userPass"

    aput-object v5, v4, v7

    invoke-direct {v0, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 116
    sget-object v4, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v4, v3}, Lcm/aptoide/accountmanager/ws/LoginMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    new-array v3, v6, [Ljava/lang/String;

    aget-object v2, v2, v7

    .line 118
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 117
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 121
    :cond_4
    sget-object v4, Lcm/aptoide/accountmanager/ws/LoginMode;->APTOIDE:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v4, v3}, Lcm/aptoide/accountmanager/ws/LoginMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcm/aptoide/accountmanager/ws/LoginMode;->GOOGLE:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v4, v3}, Lcm/aptoide/accountmanager/ws/LoginMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_5
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getLoginMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "loginType"

    aput-object v3, v2, v7

    invoke-direct {v0, v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 132
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/ws/LoginMode;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_6
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_8

    .line 140
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "loginName"

    aput-object v3, v2, v7

    invoke-direct {v0, v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 141
    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Lcm/aptoide/pt/actions/UserData;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Package not authorized to access provider."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 169
    .line 171
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 172
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 173
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 174
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 175
    const-string v4, "AptoideDebug"

    const-string v6, "Someone is trying to update preferences"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 182
    :pswitch_0
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 183
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move v4, v1

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 185
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 186
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-static {v5}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$1;->lambdaFactory$(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "forcecountry"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceCountry(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 210
    :cond_3
    :goto_2
    if-lez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-static {v5, v1}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxContentProvider$$Lambda$2;->lambdaFactory$(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v4

    .line 225
    :goto_3
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :cond_4
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "notificationtype"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setNotificationType(Ljava/lang/String;)V

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 197
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pullNotificationAction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcm/aptoide/pt/v8engine/services/PullingContentService;

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const-string v3, "PUSH_NOTIFICATIONS_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "debugmode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setDebug(Z)V

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcm/aptoide/pt/logger/Logger;->setDBG(Z)V

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 217
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v4

    .line 218
    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v2

    goto :goto_3

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
