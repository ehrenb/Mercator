.class Lcom/localytics/android/LocationHandler;
.super Lcom/localytics/android/BaseHandler;
.source "LocationHandler.java"

# interfaces
.implements Lcom/localytics/android/LocationChangedListener;
.implements Lcom/localytics/android/ManifestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocationHandler$15;
    }
.end annotation


# static fields
.field private static final LOCATION_SQUARED_DELTA_FORMAT:Ljava/lang/String; = "((%s - %s) * (%s - %s) + (%s - %s) * (%s - %s) * %s) LIMIT %s"

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x192

.field private static final MESSAGE_MANIFEST_CONFIG:I = 0x194

.field private static final MESSAGE_SET_LOCATION_MONITORING_ENABLED:I = 0x191

.field private static final MESSAGE_STOPPED_MONITORING_ALL_GEOFENCES:I = 0x193

.field private static final MESSAGE_TRIGGER_REGION:I = 0x195

.field private static final MESSAGE_TRIGGER_REGIONS:I = 0x196


# instance fields
.field private final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/LocationHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;Lcom/localytics/android/LocationManager;)V

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;Lcom/localytics/android/LocationManager;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 85
    const-string v0, "Location"

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->siloName:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/LocationListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 88
    if-eqz p3, :cond_0

    .line 90
    iput-object p3, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    .line 91
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    invoke-virtual {v0, p1, p0}, Lcom/localytics/android/LocationManager;->initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method private _callListenersDidTriggerRegionsOnMainThread(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 1

    .prologue
    .line 826
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 827
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 829
    return-void
.end method

.method private _callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 834
    new-instance v1, Lcom/localytics/android/LocationHandler$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/localytics/android/LocationHandler$14;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 842
    return-void
.end method

.method private _geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 911
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 912
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationHandler;->_getPlaceId(Ljava/lang/String;)J

    move-result-wide v10

    .line 913
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences_attributes"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "place_id"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v0, v7

    .line 923
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 925
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 927
    const-string v2, "key"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 929
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    :cond_0
    if-eqz v1, :cond_1

    .line 936
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_1
    return-object v8

    .line 934
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 936
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 934
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private _getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 847
    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "identifier"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 855
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    new-instance v0, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v0}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    const-string v2, "place_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setPlaceId(J)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "identifier"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/CircularRegion$Builder;->setName(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "latitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLatitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "longitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLongitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "radius"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/CircularRegion$Builder;->setRadius(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v2

    const-string v0, "enter_analytics_enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_0
    invoke-virtual {v2, v0}, Lcom/localytics/android/CircularRegion$Builder;->setEnterAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v2

    const-string v0, "exit_analytics_enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    :goto_1
    invoke-virtual {v2, v0}, Lcom/localytics/android/CircularRegion$Builder;->setExitAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string v2, "schema_version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/CircularRegion$Builder;->setSchemaVersion(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/CircularRegion$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 873
    if-eqz v1, :cond_0

    .line 875
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 879
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v0, v8

    .line 857
    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    .line 873
    :cond_3
    if-eqz v1, :cond_4

    .line 875
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 879
    goto :goto_2

    .line 873
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 873
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3
.end method

.method private _getGeofencesToMonitor(DD)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 472
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 477
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 478
    const-string v2, "((%s - %s) * (%s - %s) + (%s - %s) * (%s - %s) * %s) LIMIT %s"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "latitude"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "longitude"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "longitude"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x9

    sget v1, Lcom/localytics/android/Constants;->GEOFENCES_MONITORING_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 482
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 483
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    .line 486
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 490
    :cond_1
    if-eqz v1, :cond_2

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_2
    return-object v7

    .line 490
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private _getLocationManager()Lcom/localytics/android/LocationManager;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/localytics/android/PlayServicesUtils;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/localytics/android/LocationManager;

    invoke-direct {v0}, Lcom/localytics/android/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    .line 108
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocationManager;->initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    return-object v0
.end method

.method private _getRegionEnteredTime(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1056
    const-string v0, "entered_time"

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/LocationHandler;->_getRegionTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private _getRegionExitedTime(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1061
    const-string v0, "exited_time"

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/LocationHandler;->_getRegionTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private _getRegionTime(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1066
    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "identifier"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1075
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 1082
    if-eqz v2, :cond_0

    .line 1084
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1088
    :cond_0
    :goto_0
    return-wide v0

    .line 1082
    :cond_1
    if-eqz v2, :cond_2

    .line 1084
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1088
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 1084
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1082
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private _getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Region;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1039
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 1040
    const-string v2, "Localytics Place ID"

    invoke-virtual {p0, v1}, Lcom/localytics/android/LocationHandler;->_getPlaceId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string v2, "Region Identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string v1, "Region Type"

    invoke-virtual {p1}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string v1, "Schema Version - Client"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string v1, "Schema Version - Server"

    invoke-virtual {p1}, Lcom/localytics/android/Region;->getSchemaVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->isWifiEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    const-string v2, "Wifi Enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1051
    return-object v0
.end method

.method private _handleManifestConfig(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    if-eqz p1, :cond_3

    .line 518
    const-string v0, "places_data_last_modified"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v8

    .line 519
    const-string v0, "places_data_url"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 521
    const-string v0, "schema_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    const-string v0, "schema_version"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "places_data_last_modified"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 528
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    const-string v0, "places_data_last_modified"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 530
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    .line 532
    :cond_0
    :try_start_1
    invoke-static {v7}, Lcom/localytics/android/MarketingDownloader;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 534
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    :cond_1
    invoke-virtual {p0, v0, v8, v9, v6}, Lcom/localytics/android/LocationHandler;->_handlePlacesData(Lorg/json/JSONObject;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 549
    :cond_3
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    :try_start_2
    const-string v2, "IOException while downloading places data"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 540
    :catch_1
    move-exception v0

    .line 541
    :try_start_3
    const-string v2, "JSONException while downloading places data"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v6, v2

    goto :goto_0
.end method

.method private _parseGeofence(Lorg/json/JSONObject;I)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 765
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 766
    const-string v0, "place_id"

    const-string v4, "place_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    const-string v0, "identifier"

    const-string v4, "identifier"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "latitude"

    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 769
    const-string v0, "longitude"

    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 770
    const-string v0, "radius"

    const-string v4, "radius"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string v0, "name"

    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "schema_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v0, "enter_analytics_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 775
    const-string v4, "exit_analytics_enabled"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 776
    const-string v5, "enter_analytics_enabled"

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v0, "exit_analytics_enabled"

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    return-object v3

    :cond_0
    move v0, v2

    .line 776
    goto :goto_0

    :cond_1
    move v1, v2

    .line 777
    goto :goto_1
.end method

.method private _removeDeactivatedGeofences(Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v3

    .line 588
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 590
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 591
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 593
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 594
    const-string v6, "identifier"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/CircularRegion;

    .line 600
    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 602
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_3

    .line 610
    invoke-virtual {v0, v5}, Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V

    .line 611
    invoke-virtual {p0, v5}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 614
    :cond_3
    new-instance v0, Lcom/localytics/android/LocationHandler$12;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationHandler$12;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-static {p1, v0}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Lorg/json/JSONArray;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v3, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v4, "geofences"

    const-string v5, "%s NOT IN %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "identifier"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 630
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 632
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 633
    new-instance v1, Lcom/localytics/android/LocationHandler$13;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/LocationHandler$13;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    :cond_4
    return-void

    .line 626
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 627
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    invoke-virtual {v0, v1, v8, v8}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method

.method private _removeEnteredTime(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 989
    const-wide/16 v0, 0x0

    const-string v2, "entered_time"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 990
    return-void
.end method

.method private _saveGeofence(Lorg/json/JSONObject;Landroid/support/v4/f/e;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/f/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 683
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_validateGeofence(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string v0, "geofence data is invalid:\n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    move-wide v0, v2

    .line 710
    :cond_0
    :goto_0
    return-wide v0

    .line 689
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/localytics/android/LocationHandler;->_parseGeofence(Lorg/json/JSONObject;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 691
    const-string v0, "place_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 692
    invoke-virtual {p2, v4, v5}, Landroid/support/v4/f/e;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 693
    if-eqz v0, :cond_2

    .line 696
    const-string v4, "is_monitored"

    const-string v5, "is_monitored"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v4, "entered_time"

    const-string v5, "entered_time"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v4, "exited_time"

    const-string v5, "exited_time"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v4, "geofences"

    invoke-virtual {v0, v4, v1}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 702
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 704
    const-string v2, "attributes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/localytics/android/LocationHandler;->_saveGeofenceAttributes(JLorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private _saveGeofenceAttributes(JLorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 716
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences_attributes"

    const-string v2, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "place_id"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    if-eqz p3, :cond_0

    .line 723
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 724
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 728
    const-string v3, "place_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 729
    const-string v3, "key"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v3, "value"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "geofences_attributes"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method private _saveGeofences(Lorg/json/JSONArray;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_removeDeactivatedGeofences(Lorg/json/JSONArray;)V

    .line 574
    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_queryGeofencesInfo()Landroid/support/v4/f/e;

    move-result-object v1

    .line 577
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 579
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/localytics/android/LocationHandler;->_saveGeofence(Lorg/json/JSONObject;Landroid/support/v4/f/e;I)J

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method

.method private _stoppedMonitoringAllGeofences()V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 409
    return-void
.end method

.method private _tagEnterEvent(Lcom/localytics/android/Region;)V
    .locals 3

    .prologue
    .line 1016
    invoke-virtual {p1}, Lcom/localytics/android/Region;->isEnterAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v1, "Localytics Place Entered"

    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1019
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 1021
    :cond_0
    return-void
.end method

.method private _tagExitEvent(Lcom/localytics/android/Region;J)V
    .locals 6

    .prologue
    .line 1025
    invoke-virtual {p1}, Lcom/localytics/android/Region;->isExitAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;

    move-result-object v0

    .line 1028
    long-to-double v2, p2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1029
    const-string v1, "Dwell Time (minutes)"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "Localytics Place Visited"

    invoke-interface {v1, v2, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1031
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 1033
    :cond_0
    return-void
.end method

.method private _tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 949
    invoke-virtual {p2}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 950
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 952
    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->_getRegionEnteredTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 953
    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->_getRegionExitedTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 954
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 956
    sget-object v8, Lcom/localytics/android/LocationHandler$15;->$SwitchMap$com$localytics$android$Region$Event:[I

    invoke-virtual {p1}, Lcom/localytics/android/Region$Event;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 984
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 960
    :pswitch_0
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    sub-long v4, v2, v6

    sget-wide v6, Lcom/localytics/android/Constants;->REGION_THROTTLE_CUTOFF_TIME_MILLIS:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 962
    :cond_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/localytics/android/LocationHandler;->_saveEnteredTime(Ljava/lang/String;J)V

    .line 963
    invoke-direct {p0, p2}, Lcom/localytics/android/LocationHandler;->_tagEnterEvent(Lcom/localytics/android/Region;)V

    goto :goto_0

    .line 970
    :pswitch_1
    sub-long v4, v2, v4

    .line 971
    sget-wide v6, Lcom/localytics/android/Constants;->MIN_REGION_DWELL_TIME_MILLIS:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    sget-wide v6, Lcom/localytics/android/Constants;->MAX_REGION_DWELL_TIME_MILLIS:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 974
    invoke-virtual {p0, v1, v2, v3}, Lcom/localytics/android/LocationHandler;->_saveExitedTime(Ljava/lang/String;J)V

    .line 975
    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->_removeEnteredTime(Ljava/lang/String;)V

    .line 976
    invoke-direct {p0, p2, v4, v5}, Lcom/localytics/android/LocationHandler;->_tagExitEvent(Lcom/localytics/android/Region;J)V

    goto :goto_0

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 805
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 806
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Region;

    .line 808
    instance-of v3, v0, Lcom/localytics/android/CircularRegion;

    if-eqz v3, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationHandler;->_getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/localytics/android/LocationHandler;->_tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    invoke-direct {p0, v1, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 822
    :cond_2
    return-void
.end method

.method private _updateGeofencesIsMonitored(ZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 414
    const-string v4, "is_monitored"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v4, "geofences"

    const-string v5, "%s IN %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "identifier"

    aput-object v7, v6, v2

    aput-object p2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 421
    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update geofences is_monitored to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for IDs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 425
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 414
    goto :goto_0
.end method

.method private _updateTime(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1004
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "geofences"

    const-string v3, "%s = ?"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "identifier"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method private _validateGeofence(Lorg/json/JSONObject;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 739
    const-string v0, "place_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 740
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 743
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 746
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 748
    :goto_0
    const-string v7, "longitude"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "longitude"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_0

    .line 751
    const-string v2, "longitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 753
    :cond_0
    const-string v7, "radius"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 756
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_1

    if-lez v7, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/localytics/android/LocationHandler;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringAllGeofences()V

    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_handleManifestConfig(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/LocationHandler;->_triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    return-void
.end method

.method static synthetic access$300(Lcom/localytics/android/LocationHandler;)Lcom/localytics/android/ListenersSet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/LocationHandler;DD)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/localytics/android/LocationHandler;->_getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;
    .locals 4

    .prologue
    .line 502
    const-string v0, "identifier"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v1}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    const-string v2, "place_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setPlaceId(J)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLatitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string v2, "longitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLongitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string v2, "radius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/localytics/android/CircularRegion$Builder;->setRadius(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/localytics/android/CircularRegion$Builder;->setName(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationHandler;->_geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/localytics/android/CircularRegion$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method _getMonitoredGeofences()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 430
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "is_monitored"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 439
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    .line 442
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 449
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 447
    :cond_1
    if-eqz v1, :cond_2

    .line 449
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_2
    return-object v7

    .line 447
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method protected _getPlaceId(Ljava/lang/String;)J
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 884
    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "identifier"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 892
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const-string v0, "place_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 899
    if-eqz v2, :cond_0

    .line 901
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_0
    :goto_0
    return-wide v0

    .line 899
    :cond_1
    if-eqz v2, :cond_2

    .line 901
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 899
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 901
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 899
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method _handlePlacesData(Lorg/json/JSONObject;JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 553
    const-string v0, "geofences"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/localytics/android/LocationHandler;->_saveGeofences(Lorg/json/JSONArray;I)V

    .line 555
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/localytics/android/LocationManager;->updateListenersWithLastLocation()V

    .line 561
    :cond_0
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 564
    const-string v1, "places_data_last_modified"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 569
    return-void
.end method

.method _init()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/localytics/android/LocationProvider;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/LocationProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 230
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_initializeInfo()V

    .line 231
    return-void
.end method

.method protected _initializeInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string v0, "Performing first-time initialization for LocationProvider info table"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    const-string v2, "places_data_last_modified"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v2, "location_monitoring_enabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    invoke-virtual {v2, v3, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 259
    return-void

    .line 252
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 252
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method _locationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 330
    if-eqz p1, :cond_2

    .line 332
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 333
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 335
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v4

    .line 336
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/localytics/android/LocationHandler;->_getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 339
    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 341
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v2, v1}, Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 347
    invoke-virtual {v2, v0}, Lcom/localytics/android/LocationManager;->addGeofences(Ljava/util/List;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->_startedMonitoringGeofences(Ljava/util/List;)V

    .line 351
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 353
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    new-instance v3, Lcom/localytics/android/LocationHandler$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/localytics/android/LocationHandler$8;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_2
    return-void
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method _queryGeofencesInfo()Landroid/support/v4/f/e;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/e",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 646
    new-instance v7, Landroid/support/v4/f/e;

    invoke-direct {v7}, Landroid/support/v4/f/e;-><init>()V

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "geofences"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 651
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const-string v0, "place_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 654
    const-string v0, "identifier"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    const-string v4, "is_monitored"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 656
    const-string v5, "entered_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 657
    const-string v5, "exited_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 659
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 660
    const-string v6, "place_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    const-string v6, "identifier"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "is_monitored"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    const-string v0, "entered_time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    const-string v0, "exited_time"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    invoke-virtual {v7, v2, v3, v5}, Landroid/support/v4/f/e;->b(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 670
    :cond_1
    if-eqz v1, :cond_2

    .line 672
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_2
    return-object v7

    .line 670
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method _saveEnteredTime(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 994
    const-string v0, "entered_time"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 995
    return-void
.end method

.method _saveExitedTime(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 999
    const-string v0, "exited_time"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 1000
    return-void
.end method

.method _setLocationMonitoringEnabled(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationManager;->setMonitoringEnabled(Z)V

    .line 322
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 323
    const-string v2, "location_monitoring_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    :cond_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _startedMonitoringGeofences(Ljava/util/List;)V
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
    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    new-instance v0, Lcom/localytics/android/LocationHandler$9;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationHandler$9;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-static {p1, v0}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/LocationHandler;->_updateGeofencesIsMonitored(ZLjava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method _stoppedMonitoringGeofences(Ljava/util/List;)V
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
    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    new-instance v0, Lcom/localytics/android/LocationHandler$10;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationHandler$10;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-static {p1, v0}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/LocationHandler;->_updateGeofencesIsMonitored(ZLjava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method _triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 2

    .prologue
    .line 788
    instance-of v0, p1, Lcom/localytics/android/CircularRegion;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationHandler;->_getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/localytics/android/LocationHandler;->_tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 796
    :cond_0
    return-void
.end method

.method addListener(Lcom/localytics/android/LocationListener;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method getGeofencesToMonitor(DD)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/localytics/android/LocationHandler$11;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/LocationHandler$11;-><init>(Lcom/localytics/android/LocationHandler;DD)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 224
    :goto_0
    return-void

    .line 126
    :pswitch_0
    const-string v0, "Location handler received MESSAGE_SET_LOCATION_MONITORING_ENABLED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v2, Lcom/localytics/android/LocationHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/LocationHandler$1;-><init>(Lcom/localytics/android/LocationHandler;Z)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v0, "Location handler received MESSAGE_LOCATION_CHANGED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 146
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v2, Lcom/localytics/android/LocationHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/LocationHandler$2;-><init>(Lcom/localytics/android/LocationHandler;Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "Location handler received MESSAGE_STOPPED_MONITORING_ALL_GEOFENCES"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/LocationHandler$3;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationHandler$3;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v0, "Location handler received MESSAGE_MANIFEST_CONFIG"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 176
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v2, Lcom/localytics/android/LocationHandler$4;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/LocationHandler$4;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 188
    :pswitch_4
    const-string v0, "Location handler received MESSAGE_TRIGGER_REGION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 191
    aget-object v1, v0, v1

    check-cast v1, Lcom/localytics/android/Region$Event;

    .line 192
    aget-object v0, v0, v2

    check-cast v0, Lcom/localytics/android/Region;

    .line 194
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v3, Lcom/localytics/android/LocationHandler$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/localytics/android/LocationHandler$5;-><init>(Lcom/localytics/android/LocationHandler;Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v2, v3}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    :pswitch_5
    const-string v0, "Location handler received MESSAGE_TRIGGER_REGIONS"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 207
    aget-object v1, v0, v1

    check-cast v1, Lcom/localytics/android/Region$Event;

    .line 208
    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    .line 210
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v3, Lcom/localytics/android/LocationHandler$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/localytics/android/LocationHandler$6;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v2, v3}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isLocationMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/localytics/android/LocationHandler$7;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationHandler$7;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1099
    if-eqz p3, :cond_0

    .line 1101
    const/16 v0, 0x194

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1103
    :cond_0
    return-void
.end method

.method public localyticsWillDownloadManifest()V
    .locals 0

    .prologue
    .line 1094
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/LocationListener;

    invoke-interface {v0, p1}, Lcom/localytics/android/LocationListener;->localyticsDidUpdateLocation(Landroid/location/Location;)V

    .line 1110
    const/16 v0, 0x192

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1111
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/LocationListener;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method setLocationMonitoringEnabled(Z)V
    .locals 2

    .prologue
    .line 313
    const/16 v0, 0x191

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 314
    return-void
.end method

.method stoppedMonitoringAllGeofences()V
    .locals 1

    .prologue
    .line 402
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 3

    .prologue
    .line 783
    const/16 v0, 0x195

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 784
    return-void
.end method

.method triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 800
    const/16 v0, 0x196

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 801
    return-void
.end method
