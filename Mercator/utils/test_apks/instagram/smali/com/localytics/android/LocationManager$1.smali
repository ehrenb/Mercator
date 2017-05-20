.class Lcom/localytics/android/LocationManager$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->addGeofences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;

.field final synthetic val$regions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    iput-object p2, p0, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$000(Lcom/localytics/android/LocationManager;)Lcom/localytics/android/LocalyticsDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v1, p0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v1}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    iget-object v3, p0, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    # invokes: Lcom/localytics/android/LocationManager;->getGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    invoke-static {v2, v3}, Lcom/localytics/android/LocationManager;->access$300(Lcom/localytics/android/LocationManager;Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->getGeofencePendingIntent()Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/GeofencingApi;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/LocationManager$1$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationManager$1$1;-><init>(Lcom/localytics/android/LocationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "Exception while adding geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
