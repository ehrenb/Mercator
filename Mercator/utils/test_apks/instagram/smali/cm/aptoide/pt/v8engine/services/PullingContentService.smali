.class public Lcm/aptoide/pt/v8engine/services/PullingContentService;
.super Landroid/app/Service;
.source "PullingContentService.java"


# static fields
.field public static final BOOT_COMPLETED_ACTION:Ljava/lang/String; = "BOOT_COMPLETED_ACTION"

.field public static final PUSH_NOTIFICATIONS_ACTION:Ljava/lang/String; = "PUSH_NOTIFICATIONS_ACTION"

.field public static final PUSH_NOTIFICATION_ID:I = 0x151b8

.field public static final PUSH_NOTIFICATION_INTERVAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATES_ACTION:Ljava/lang/String; = "UPDATES_ACTION"

.field public static final UPDATES_INTERVAL:J = 0x2932e00L

.field public static final UPDATE_NOTIFICATION_ID:I = 0x7b


# instance fields
.field private subscriptions:Lrx/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcm/aptoide/pt/v8engine/services/PullingContentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/services/PullingContentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private isAlarmUp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcm/aptoide/pt/v8engine/services/PullingContentService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x20000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$setUpdatesAction$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public static setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/services/PullingContentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 73
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 74
    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    move-object v0, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 75
    return-void
.end method

.method private setPushNotification(Landroid/content/Context;Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;I)V
    .locals 11

    .prologue
    const v5, 0x151b8

    const/4 v10, 0x0

    .line 169
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcm/aptoide/pt/v8engine/receivers/PullingContentReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v2, "NOTIFICATION_PRESSED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "PUSH_NOTIFICATION_TRACK_URL"

    .line 173
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getTrackUrl()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "PUSH_NOTIFICATION_TARGET_URL"

    .line 175
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v10, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 180
    new-instance v2, Landroid/support/v4/app/am$d;

    .line 181
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/am$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/am$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v10}, Landroid/support/v4/app/am$d;->a(Z)Landroid/support/v4/app/am$d;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->ic_stat_aptoide_notification:I

    .line 184
    invoke-virtual {v1, v2}, Landroid/support/v4/app/am$d;->a(I)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 185
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v3

    .line 185
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/am$d;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/am$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v4

    .line 191
    const/16 v1, 0x14

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 192
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/NotificationManager;

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 197
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getImages()Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getImages()Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getImages()Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getBannerUrl()Ljava/lang/String;

    move-result-object v8

    .line 201
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcm/aptoide/pt/v8engine/R$layout;->pushnotificationlayout:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 203
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    .line 204
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v9

    invoke-interface {v9}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v9

    .line 204
    invoke-static {v3, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 206
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->text1:I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->description:I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    iput-object v2, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 209
    new-instance v0, Lcom/bumptech/glide/g/b/g;

    .line 210
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->PushNotificationImageView:I

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/g/b/g;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;I)V

    .line 212
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadImageToNotification(Lcom/bumptech/glide/g/b/g;Ljava/lang/String;)Lcom/bumptech/glide/g/b/g;

    .line 215
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;->getId()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 216
    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setLastPushNotificationId(I)V

    .line 219
    :cond_1
    invoke-virtual {v6, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0, p3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->stopSelf(I)V

    .line 222
    return-void
.end method

.method private setPushNotificationsAction(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;->of()Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/services/PullingContentService;Landroid/content/Context;I)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;)V

    .line 122
    return-void
.end method

.method private setUpdatesAction(I)V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService;->subscriptions:Lrx/j/b;

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->sync(Z)Lrx/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getAll(Z)Lrx/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/a;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/services/PullingContentService;I)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 112
    return-void
.end method

.method private setUpdatesNotification(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;->getMainActivityFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v1, "new_updates"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    if-lez v2, :cond_1

    .line 134
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getLastUpdates()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 135
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isUpdateNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->has_updates:I

    new-array v3, v8, [Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 136
    invoke-static {v0, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v4

    .line 139
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->new_updates:I

    new-array v5, v8, [Ljava/lang/Object;

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-ne v2, v8, :cond_0

    .line 142
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->one_new_update:I

    new-array v5, v8, [Ljava/lang/Object;

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    new-instance v5, Landroid/support/v4/app/am$d;

    .line 147
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/am$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/support/v4/app/am$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v7}, Landroid/support/v4/app/am$d;->a(Z)Landroid/support/v4/app/am$d;

    move-result-object v1

    sget v5, Lcm/aptoide/pt/v8engine/R$drawable;->ic_stat_aptoide_notification:I

    .line 150
    invoke-virtual {v1, v5}, Landroid/support/v4/app/am$d;->a(I)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 151
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 152
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v6

    .line 151
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/am$d;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v4}, Landroid/support/v4/app/am$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v3}, Landroid/support/v4/app/am$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 158
    const/16 v0, 0x14

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 159
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    .line 160
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 161
    const/16 v3, 0x7b

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    invoke-static {v2}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setLastUpdates(I)V

    .line 164
    :cond_1
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->stopSelf(I)V

    .line 165
    return-void
.end method


# virtual methods
.method synthetic lambda$setPushNotificationsAction$2(Landroid/content/Context;ILcm/aptoide/pt/model/v3/GetPushNotificationsResponse;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p3, p2}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setPushNotification(Landroid/content/Context;Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;I)V

    return-void
.end method

.method synthetic lambda$setUpdatesAction$0(ILjava/util/List;)V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcm/aptoide/pt/v8engine/services/PullingContentService;->TAG:Ljava/lang/String;

    const-string v1, "updates refreshed"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setUpdatesNotification(Ljava/util/List;I)V

    .line 108
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService;->subscriptions:Lrx/j/b;

    .line 54
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 55
    const-string v1, "PUSH_NOTIFICATIONS_ACTION"

    invoke-direct {p0, p0, v1}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->isAlarmUp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "PUSH_NOTIFICATIONS_ACTION"

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, p0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/String;J)V

    .line 58
    :cond_0
    const-string v1, "UPDATES_ACTION"

    invoke-direct {p0, p0, v1}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->isAlarmUp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const-string v1, "UPDATES_ACTION"

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, p0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setAlarm(Landroid/app/AlarmManager;Landroid/content/Context;Ljava/lang/String;J)V

    .line 61
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 79
    if-nez p1, :cond_2

    const/4 v0, 0x0

    move-object v2, v0

    .line 80
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_1
    :goto_2
    return v1

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 81
    :sswitch_0
    const-string v3, "UPDATES_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "PUSH_NOTIFICATIONS_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "BOOT_COMPLETED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 83
    :pswitch_0
    invoke-direct {p0, p3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setUpdatesAction(I)V

    goto :goto_2

    .line 86
    :pswitch_1
    invoke-direct {p0, p0, p3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setPushNotificationsAction(Landroid/content/Context;I)V

    goto :goto_2

    .line 89
    :pswitch_2
    invoke-direct {p0, p3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setUpdatesAction(I)V

    .line 90
    invoke-direct {p0, p0, p3}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->setPushNotificationsAction(Landroid/content/Context;I)V

    goto :goto_2

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x12556477 -> :sswitch_2
        0x41964f6b -> :sswitch_0
        0x5e401992 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
