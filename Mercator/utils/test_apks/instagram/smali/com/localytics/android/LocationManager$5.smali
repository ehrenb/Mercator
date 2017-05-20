.class Lcom/localytics/android/LocationManager$5;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->startMonitoring()V
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
    .line 410
    iput-object p1, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    :try_start_0
    const-string v0, "LocationManager startMonitoring called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->REQUEST_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    # setter for: Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;
    invoke-static {v0, v1}, Lcom/localytics/android/LocationManager;->access$502(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 418
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->requestLocationUpdates()V
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$600(Lcom/localytics/android/LocationManager;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const-string v0, "LocationManager connecting to GoogleApiClient for startMonitoring"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/c;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "Exception while starting location monitoring"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
