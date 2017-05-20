.class Lcom/localytics/android/LocationManager$6;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->stopMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    :try_start_0
    const-string v0, "LocationManager stopMonitoring called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->STOP_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    # setter for: Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;
    invoke-static {v0, v1}, Lcom/localytics/android/LocationManager;->access$502(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 454
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->stopLocationUpdates()V
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$700(Lcom/localytics/android/LocationManager;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    const-string v0, "LocationManager connecting to GoogleApiClient for stopMonitoring"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "Exception while stopping location monitoring"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
