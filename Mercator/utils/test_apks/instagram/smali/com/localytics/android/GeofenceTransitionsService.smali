.class public Lcom/localytics/android/GeofenceTransitionsService;
.super Landroid/app/IntentService;
.source "GeofenceTransitionsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "GeofenceTransitionsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private eventForTransition(I)Lcom/localytics/android/Region$Event;
    .locals 1

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    sget-object v0, Lcom/localytics/android/Region$Event;->ENTER:Lcom/localytics/android/Region$Event;

    goto :goto_0

    .line 73
    :pswitch_1
    sget-object v0, Lcom/localytics/android/Region$Event;->EXIT:Lcom/localytics/android/Region$Event;

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private logError(I)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "Geofence: Unknown error"

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 96
    return-void

    .line 85
    :pswitch_0
    const-string v0, "Geofence: Geofence not available"

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "Geofence: Too many geofences"

    goto :goto_0

    .line 91
    :pswitch_2
    const-string v0, "Geofence: Too many pending intents"

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/localytics/android/GeofenceTransitionsService;->logError(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v1

    .line 34
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    .line 41
    new-instance v4, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v4}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "Something went wrong with a geofence transition"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    :cond_3
    :try_start_1
    invoke-direct {p0, v1}, Lcom/localytics/android/GeofenceTransitionsService;->eventForTransition(I)Lcom/localytics/android/Region$Event;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-static {v2, v0}, Lcom/localytics/android/Localytics;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "Geofence transition ignored - not enter or exit"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
