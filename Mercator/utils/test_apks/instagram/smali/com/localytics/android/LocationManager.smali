.class Lcom/localytics/android/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/c$b;
.implements Lcom/google/android/gms/common/api/c$c;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocationManager$7;,
        Lcom/localytics/android/LocationManager$OnConnectedTask;
    }
.end annotation


# static fields
.field private static final UPDATE_FASTEST_INTERVAL:J = 0xea60L

.field private static final UPDATE_INTERVAL:J = 0x493e0L


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/c;

.field private mGeofencePendingIntent:Landroid/app/PendingIntent;

.field private mLastLocation:Landroid/location/Location;

.field private mListener:Lcom/localytics/android/LocationChangedListener;

.field private mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/LocationManager;)Lcom/localytics/android/LocalyticsDao;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/LocationManager;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/LocationManager;Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->getGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/LocationManager;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->getGeofencePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/localytics/android/LocationManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->requestLocationUpdates()V

    return-void
.end method

.method static synthetic access$700(Lcom/localytics/android/LocationManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopLocationUpdates()V

    return-void
.end method

.method private convertRegions(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 358
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/CircularRegion;

    .line 360
    new-instance v1, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion;->getRadius()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "Exception while converting regions"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    :cond_0
    return-object v7
.end method

.method private declared-synchronized createApiClientIfNecessary()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/google/android/gms/common/api/c$a;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/c$a;->a(Lcom/google/android/gms/common/api/c$b;)Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/c$a;->a(Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a;->b()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 268
    :try_start_1
    const-string v1, "Exception while creating GoogleApiClient"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGeofencePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/localytics/android/GeofenceTransitionsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 399
    const-string v1, "Exception while creating geofence pending intent"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)",
            "Lcom/google/android/gms/location/GeofencingRequest;"
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 336
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->convertRegions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 337
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "Exception while creating geofencing request"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v0

    .line 229
    packed-switch v0, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Removing all monitored geofences to reset state."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V

    .line 243
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V

    .line 251
    :goto_0
    return-void

    .line 232
    :pswitch_0
    const-string v0, "GEOFENCE_NOT_AVAILABLE. Resetting database state to none monitored."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "Exception while handling error status"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    :pswitch_1
    :try_start_1
    const-string v0, "GEOFENCE_TOO_MANY_GEOFENCES. Removing all monitored geofences to reset state."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeAllGeofences()V
    .locals 2

    .prologue
    .line 276
    :try_start_0
    new-instance v0, Lcom/localytics/android/LocationManager$4;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$4;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 319
    const-string v1, "Exception while removing all geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestLocationUpdates()V
    .locals 4

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 511
    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 512
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 513
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 514
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 515
    const-string v0, "LocationManager requesting location updates"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 520
    const-string v1, "Exception while requesting location updates"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 497
    const-string v1, "Exception running runnable on main thread"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startMonitoring()V
    .locals 2

    .prologue
    .line 409
    :try_start_0
    new-instance v0, Lcom/localytics/android/LocationManager$5;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$5;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 437
    const-string v1, "Exception while starting location monitoring"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopLocationUpdates()V
    .locals 2

    .prologue
    .line 528
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    .line 529
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 530
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V

    .line 531
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->g()V

    .line 532
    const-string v0, "LocationManager stopped monitoring location"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 536
    const-string v1, "Exception while stopping location updates"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopMonitoring()V
    .locals 2

    .prologue
    .line 445
    :try_start_0
    new-instance v0, Lcom/localytics/android/LocationManager$6;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$6;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "Exception while stopping location monitoring"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    new-instance v0, Lcom/localytics/android/LocationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/LocationManager$1;-><init>(Lcom/localytics/android/LocationManager;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "Exception while adding geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 55
    iput-object p2, p0, Lcom/localytics/android/LocationManager;->mListener:Lcom/localytics/android/LocationChangedListener;

    .line 56
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 546
    :try_start_0
    const-string v0, "LocationManager GoogleApiClient connected"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 547
    sget-object v0, Lcom/localytics/android/LocationManager$7;->$SwitchMap$com$localytics$android$LocationManager$OnConnectedTask:[I

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;

    invoke-virtual {v1}, Lcom/localytics/android/LocationManager$OnConnectedTask;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 561
    :goto_0
    return-void

    .line 550
    :pswitch_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->requestLocationUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 559
    const-string v1, "Exception after connection to GoogleApiClient"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 553
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopLocationUpdates()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager GoogleApiClient onConnectionFailed. result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager GoogleApiClient onConnectionSuspended. cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 580
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager onLocationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 581
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    .line 582
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mListener:Lcom/localytics/android/LocationChangedListener;

    invoke-interface {v0, p1}, Lcom/localytics/android/LocationChangedListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 586
    const-string v1, "Exception after location change"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGeofences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    new-instance v1, Lcom/localytics/android/LocationManager$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationManager$2;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-static {p1, v0, v1}, Lcom/localytics/android/Utils;->map(Ljava/util/Collection;Ljava/util/Collection;Lcom/localytics/android/Utils$Mapper;)V

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 176
    new-instance v1, Lcom/localytics/android/LocationManager$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/localytics/android/LocationManager$3;-><init>(Lcom/localytics/android/LocationManager;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "Exception while removing geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized setMonitoringEnabled(Z)V
    .locals 5

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager setMonitoringEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 65
    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->startMonitoring()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopMonitoring()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    const-string v2, "Exception while %s location monitoring"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v1, "enabling"

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    :try_start_3
    const-string v1, "disabling"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateListenersWithLastLocation()V
    .locals 2

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationManager;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "Exception while updating listener with last location"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
