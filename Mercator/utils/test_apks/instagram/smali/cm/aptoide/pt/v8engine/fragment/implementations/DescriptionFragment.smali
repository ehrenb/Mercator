.class public Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;
.source "DescriptionFragment.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final APP_NAME:Ljava/lang/String; = "APP_NAME"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final STORE_NAME:Ljava/lang/String; = "store_name"

.field private static final STORE_THEME:Ljava/lang/String; = "store_theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appId:J

.field private appName:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private description:Ljava/lang/String;

.field private descriptionContainer:Landroid/widget/TextView;

.field private emptyData:Landroid/widget/TextView;

.field private hasAppId:Z

.field private packageName:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private storeTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->hasAppId:Z

    .line 55
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 57
    return-void
.end method

.method public static getAPP_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "app_id"

    return-object v0
.end method

.method public static getAPP_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "APP_NAME"

    return-object v0
.end method

.method public static getDESCRIPTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "description"

    return-object v0
.end method

.method public static getPACKAGE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "packageName"

    return-object v0
.end method

.method public static getSTORE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "store_name"

    return-object v0
.end method

.method public static getSTORE_THEME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "store_theme"

    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 75
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "store_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "store_theme"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "APP_NAME"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "store_theme"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "description"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method private setDataUnavailable()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->emptyData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->descriptionContainer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    return-void
.end method

.method private setupAppDescription(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->descriptionContainer:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$HtmlU;->parse(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setDataUnavailable()V

    goto :goto_0
.end method

.method private setupTitle(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setDataUnavailable()V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 188
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->emptyData:Landroid/widget/TextView;

    .line 189
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->data_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->descriptionContainer:Landroid/widget/TextView;

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setHasOptionsMenu(Z)V

    .line 191
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_app_view_description:I

    return v0
.end method

.method protected getViewToShowAfterLoadingId()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->data_container:I

    return v0
.end method

.method synthetic lambda$load$0(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setupAppDescription(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 130
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setupTitle(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 131
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->finishLoading()V

    .line 132
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->descriptionContainer:Landroid/widget/TextView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->description:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$HtmlU;->parse(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->finishLoading()V

    .line 137
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->hasAppId:Z

    if-eqz v0, :cond_3

    .line 125
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->appId:J

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeName:Ljava/lang/String;

    .line 126
    invoke-static {v3}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 127
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 128
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->packageName:Ljava/lang/String;

    .line 125
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->of(JLjava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Z)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeName:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_3
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->TAG:Ljava/lang/String;

    const-string v1, "App id unavailable"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->setDataUnavailable()V

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "app_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->appId:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->hasAppId:Z

    .line 90
    :cond_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->packageName:Ljava/lang/String;

    .line 94
    :cond_1
    const-string v0, "store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v0, "store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeName:Ljava/lang/String;

    .line 98
    :cond_2
    const-string v0, "store_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "store_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeTheme:Ljava/lang/String;

    .line 102
    :cond_3
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->description:Ljava/lang/String;

    .line 105
    :cond_4
    const-string v0, "APP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    const-string v0, "APP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->appName:Ljava/lang/String;

    .line 108
    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 199
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 204
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v2}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 181
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 182
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_0
    return-void
.end method
