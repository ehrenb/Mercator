.class public Lcm/aptoide/pt/v8engine/MainActivityFragment;
.super Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;
.source "MainActivityFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;-><init>()V

    return-void
.end method

.method private appViewDeepLink(JLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 129
    if-eqz p4, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 131
    :goto_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 132
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    goto :goto_0
.end method

.method private appViewDeepLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 126
    return-void
.end method

.method private appViewDeepLink(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 135
    if-eqz p3, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_WITH_INSTALL_POPUP:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 138
    :goto_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 139
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    goto :goto_0
.end method

.method private downloadNotificationDeepLink(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->downloadingUpdates()V

    .line 175
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myDownloads:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->setMainPagerPosition(Lcm/aptoide/pt/model/v7/Event$Name;)V

    .line 176
    return-void
.end method

.method private fromTimelineDeepLink(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->timelineNotification()V

    .line 180
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->getUserTimeline:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->setMainPagerPosition(Lcm/aptoide/pt/model/v7/Event$Name;)V

    .line 181
    return-void
.end method

.method private genericDeepLink(Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 189
    new-instance v1, Lcm/aptoide/pt/model/v7/Event;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/Event;-><init>()V

    .line 190
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-direct {p0, v2, v3, v4, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->validateDeepLinkRequiredArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    const-string v5, "https://ws75.aptoide.com/api/7/"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/model/v7/Event;->setAction(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event;

    .line 198
    invoke-static {v2}, Lcm/aptoide/pt/model/v7/Event$Type;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/model/v7/Event;->setType(Lcm/aptoide/pt/model/v7/Event$Type;)Lcm/aptoide/pt/model/v7/Event;

    .line 199
    invoke-static {v4}, Lcm/aptoide/pt/model/v7/Event$Name;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/model/v7/Event;->setName(Lcm/aptoide/pt/model/v7/Event$Name;)Lcm/aptoide/pt/model/v7/Event;

    .line 200
    new-instance v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;-><init>()V

    .line 201
    invoke-static {v3}, Lcm/aptoide/pt/model/v7/Layout;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->setLayout(Lcm/aptoide/pt/model/v7/Layout;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    .line 202
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/model/v7/Event;->setData(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;)Lcm/aptoide/pt/model/v7/Event;

    .line 203
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    const-string v2, "title"

    .line 205
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "storetheme"

    .line 206
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-interface {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_1
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private handleDeepLinks(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    const-string v0, "appViewFragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->appViewDeepLink(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "appId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "packageName"

    .line 94
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-direct {p0, v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->appViewDeepLink(JLjava/lang/String;Z)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "packageName"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeName"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_auto_install_popup"

    .line 99
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 96
    invoke-direct {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->appViewDeepLink(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "searchFragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->searchDeepLink(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "newrepo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "newrepo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->newrepoDeepLink(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "fromDownloadNotification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->downloadNotificationDeepLink(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "fromTimeline"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->fromTimelineDeepLink(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_7
    const-string v0, "new_updates"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->newUpdatesDeepLink(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 114
    :cond_8
    const-string v0, "generic_deeplink"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->genericDeepLink(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 116
    :cond_9
    const-string v0, "schedule_downloads"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    const-string v0, "uri"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 117
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->scheduleDownloadsDeepLink(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 120
    :cond_a
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->launcher()V

    goto/16 :goto_0
.end method

.method static synthetic lambda$newrepoDeepLink$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$newrepoDeepLink$4(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newrepoDeepLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 168
    return-void
.end method

.method private newUpdatesDeepLink(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->newUpdatesNotification()V

    .line 185
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->setMainPagerPosition(Lcm/aptoide/pt/model/v7/Event$Name;)V

    .line 186
    return-void
.end method

.method private newrepoDeepLink(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;)Lrx/b/e;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 169
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newrepo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method private scheduleDownloadsDeepLink(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const-string v0, "openMode"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 219
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    move-result-object v0

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newScheduledDownloadsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 222
    :cond_0
    return-void
.end method

.method private searchDeepLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 143
    return-void
.end method

.method private setMainPagerPosition(Lcm/aptoide/pt/model/v7/Event$Name;)V
    .locals 1

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method private validateDeepLinkRequiredArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {p3}, Lcm/aptoide/pt/model/v7/Event$Name;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->validateAcceptedName(Lcm/aptoide/pt/model/v7/Event$Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 79
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultStore()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->home:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    .line 80
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newHomeFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 256
    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getLastV4()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/app/y;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)Landroid/support/v4/app/y$a;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-interface {v0}, Landroid/support/v4/app/y$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/y;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$newrepoDeepLink$2(Ljava/lang/String;)Lrx/d;
    .locals 2

    .prologue
    .line 149
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->isSubscribedStore(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 151
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$newrepoDeepLink$3(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcm/aptoide/pt/model/v7/Event$Name;->myStores:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->setMainPagerPosition(Lcm/aptoide/pt/model/v7/Event$Name;)V

    .line 164
    sget-object v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;->TAG:Ljava/lang/String;

    const-string v1, "newrepoDeepLink: all stores added"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method synthetic lambda$null$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->store_already_added:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongSnack(Landroid/app/Activity;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Ljava/lang/String;)V

    .line 157
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->store_followed:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 158
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongSnack(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic lambda$null$5(Lcm/aptoide/pt/model/v7/Event$Name;)V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->setDesiredViewPagerItem(Lcm/aptoide/pt/model/v7/Event$Name;)V

    goto :goto_0
.end method

.method synthetic lambda$setMainPagerPosition$6(Lcm/aptoide/pt/model/v7/Event$Name;)V
    .locals 1

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcm/aptoide/pt/v8engine/interfaces/DrawerFragment;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/y;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/DrawerFragment;

    .line 266
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/DrawerFragment;->isDrawerOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/DrawerFragment;->closeDrawer()V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 273
    :cond_1
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onCreate(Landroid/app/Activity;)V

    .line 56
    new-instance v0, Lcm/aptoide/pt/v8engine/util/ApkFy;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/ApkFy;-><init>()V

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/util/ApkFy;->run(Landroid/app/Activity;)V

    .line 58
    if-nez p1, :cond_2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/services/PullingContentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isAutoUpdateEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->isAutoUpdateWasCalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcm/aptoide/pt/v8engine/AutoUpdate;

    new-instance v1, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {v1, p0, v6}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    .line 64
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v4

    new-instance v5, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v5}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/AutoUpdate;-><init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/actions/PermissionManager;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 65
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isWizardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->setRequestedOrientation(I)V

    .line 69
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/BaseWizardViewerFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 70
    invoke-static {v6}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setWizardAvailable(Z)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->handleDeepLinks(Landroid/content/Intent;)V

    .line 75
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/activity/AptoideSimpleFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 279
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public pushFragmentV4(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 85
    return-void
.end method
