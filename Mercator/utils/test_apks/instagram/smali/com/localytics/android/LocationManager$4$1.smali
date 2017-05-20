.class Lcom/localytics/android/LocationManager$4$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/h",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/LocationManager$4;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager$4;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/localytics/android/LocationManager$4$1;->this$1:Lcom/localytics/android/LocationManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "LocationManager successfully removed all geofences"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager$4$1;->this$1:Lcom/localytics/android/LocationManager$4;

    iget-object v0, v0, Lcom/localytics/android/LocationManager$4;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$000(Lcom/localytics/android/LocationManager;)Lcom/localytics/android/LocalyticsDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V

    .line 307
    :goto_1
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager failed to remove all geofences. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "Exception while removing all geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    .prologue
    .line 287
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$4$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
