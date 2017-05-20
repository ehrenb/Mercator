.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Activity;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 304
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "928466497334"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->registerPush(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 310
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :cond_0
    return-void
.end method

.method public static onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 370
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {p0, p1}, Lcom/localytics/android/Localytics;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 348
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {p0}, Lcom/localytics/android/Localytics;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/localytics/android/Localytics;->onActivityResume(Landroid/app/Activity;)V

    .line 319
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    const-string v0, "Not Logged In"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics;->setCustomDimension(ILjava/lang/String;)V

    .line 327
    :cond_1
    :goto_1
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$300()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setCustomerId(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->handleTestMode(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "Logged In"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 357
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlurryAgent.onStartSession called"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "X89WPPSKWQB2FT6B8F3X"

    invoke-static {p0, v0}, Lcom/b/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 365
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlurryAgent.onEndSession called"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {p0}, Lcom/b/a/a;->a(Landroid/content/Context;)V

    .line 367
    return-void
.end method
