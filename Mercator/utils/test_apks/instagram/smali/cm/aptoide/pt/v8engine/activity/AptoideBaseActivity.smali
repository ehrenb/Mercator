.class public abstract Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;
.super Landroid/support/v7/a/e;
.source "AptoideBaseActivity.java"

# interfaces
.implements Lcm/aptoide/pt/actions/PermissionRequest;
.implements Lcm/aptoide/pt/v8engine/interfaces/UiComponentBasics;


# static fields
.field private static final ACCESS_TO_ACCOUNTS_REQUEST_ID:I = 0x3e

.field private static final ACCESS_TO_EXTERNAL_FS_REQUEST_ID:I = 0x3d

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _resumed:Z

.field private navManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

.field private toRunWhenAccessToAccountsIsDenied:Lrx/b/a;

.field private toRunWhenAccessToAccountsIsGranted:Lrx/b/a;

.field private toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;

.field private toRunWhenAccessToFileSystemIsGranted:Lrx/b/a;

.field private toRunWhenDownloadAccessIsDenied:Lrx/b/a;

.field private toRunWhenDownloadAccessIsGranted:Lrx/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->_resumed:Z

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)Lrx/b/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)Lrx/b/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsDenied:Lrx/b/a;

    return-object v0
.end method

.method private setUpAnalytics()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->PARTNER:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setPartnerDimension(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->VERTICAL:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setVerticalDimension(Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 88
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setGmsPresent(Z)V

    .line 90
    return-void
.end method

.method private showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/utils/SimpleSubscriber",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/d;->b(Lrx/j;)Lrx/k;

    .line 347
    return-void
.end method


# virtual methods
.method protected abstract getAnalyticsScreenName()Ljava/lang/String;
.end method

.method public abstract getContentViewId()I
.end method

.method public getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->navManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    return-object v0
.end method

.method public is_resumed()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->_resumed:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-static {p0}, Lcm/aptoide/pt/navigation/NavigationManagerV4$Builder;->buildWith(Landroid/support/v4/app/u;)Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->navManager:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 65
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    .line 66
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->getLogger(Ljava/lang/Class;)Lcm/aptoide/pt/crashreports/CrashLogger;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->setLanguage(Ljava/lang/String;)V

    .line 74
    :goto_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->setUpAnalytics()V

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->loadExtras(Landroid/os/Bundle;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->bindViews(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->setupToolbar()V

    .line 82
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->setupViews()V

    .line 83
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    .line 70
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->getLogger(Ljava/lang/Class;)Lcm/aptoide/pt/crashreports/CrashLogger;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    .line 71
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->setLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v7/a/e;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v7/a/e;->onPause()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->_resumed:Z

    .line 114
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onPause(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const v2, 0x1020002

    const/4 v1, 0x0

    .line 128
    array-length v0, p3

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/a/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 131
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/a/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 134
    :pswitch_0
    aget v0, p3, v1

    if-nez v0, :cond_2

    .line 136
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "access to read and write to external storage was granted"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsGranted:Lrx/b/a;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsGranted:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 144
    :cond_3
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "access to read and write to external storage was denied"

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_1
    aget v0, p3, v1

    if-nez v0, :cond_4

    .line 154
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "access to get accounts was granted"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsGranted:Lrx/b/a;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsGranted:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsDenied:Lrx/b/a;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsDenied:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 162
    :cond_5
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "access to get accounts was denied"

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v7/a/e;->onResume()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->_resumed:Z

    .line 120
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onResume(Landroid/app/Activity;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v7/a/e;->onStart()V

    .line 99
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onStart(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v7/a/e;->onStop()V

    .line 104
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onStop(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method public requestAccessToAccounts(Lrx/b/a;Lrx/b/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->requestAccessToAccounts(ZLrx/b/a;Lrx/b/a;)V

    .line 250
    return-void
.end method

.method public requestAccessToAccounts(ZLrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 254
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 255
    if-eqz v0, :cond_3

    .line 256
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsGranted:Lrx/b/a;

    .line 257
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToAccountsIsDenied:Lrx/b/a;

    .line 259
    if-nez p1, :cond_0

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "showing rationale and requesting permission to access accounts"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->access_to_get_accounts_rationale:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$2;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$2;-><init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)V

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "requesting permission to access accounts"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_3
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "already has permission to access accounts"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz p2, :cond_1

    .line 291
    invoke-interface {p2}, Lrx/b/a;->call()V

    goto :goto_0
.end method

.method public requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->requestAccessToExternalFileSystem(ZLrx/b/a;Lrx/b/a;)V

    .line 197
    return-void
.end method

.method public requestAccessToExternalFileSystem(ZLrx/b/a;Lrx/b/a;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 202
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 203
    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 204
    if-eqz v0, :cond_3

    .line 205
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsGranted:Lrx/b/a;

    .line 206
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenAccessToFileSystemIsDenied:Lrx/b/a;

    .line 208
    if-nez p1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "showing rationale and requesting permission to access external storage"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->storage_access_permission_request_message:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$1;-><init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;)V

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "requesting permission to access external storage"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_3
    sget-object v0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "already has permission to access external storage"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-eqz p2, :cond_1

    .line 242
    invoke-interface {p2}, Lrx/b/a;->call()V

    goto :goto_0
.end method

.method public requestDownloadAccess(Lrx/b/a;Lrx/b/a;)V
    .locals 3

    .prologue
    .line 297
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->general_downloads_dialog_no_download_rule_message:I

    .line 299
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsWifi()Z

    move-result v1

    if-nez v1, :cond_7

    .line 303
    :cond_1
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenDownloadAccessIsGranted:Lrx/b/a;

    .line 304
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->toRunWhenDownloadAccessIsDenied:Lrx/b/a;

    .line 305
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    :cond_2
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsWifi()Z

    move-result v1

    if-nez v1, :cond_5

    .line 308
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsMobile()Z

    move-result v1

    if-nez v1, :cond_5

    .line 309
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->general_downloads_dialog_no_download_rule_message:I

    .line 318
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;

    invoke-direct {v1, p0, p2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity$3;-><init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;Lrx/b/a;)V

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V

    .line 342
    :cond_4
    :goto_1
    return-void

    .line 310
    :cond_5
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsWifi()Z

    move-result v1

    if-nez v1, :cond_6

    .line 312
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->general_downloads_dialog_only_mobile_message:I

    goto :goto_0

    .line 313
    :cond_6
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getGeneralDownloadsMobile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->general_downloads_dialog_only_wifi_message:I

    goto :goto_0

    .line 339
    :cond_7
    if-eqz p1, :cond_4

    .line 340
    invoke-interface {p1}, Lrx/b/a;->call()V

    goto :goto_1
.end method
