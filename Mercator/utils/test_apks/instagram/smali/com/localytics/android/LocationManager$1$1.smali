.class Lcom/localytics/android/LocationManager$1$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager$1;->run()V
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
.field final synthetic this$1:Lcom/localytics/android/LocationManager$1;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager successfully added geofences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v1, v1, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationManager failed to add geofences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v1, v1, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v0, v0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V
    invoke-static {v0, p1}, Lcom/localytics/android/LocationManager;->access$100(Lcom/localytics/android/LocationManager;Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "Exception while adding geofences"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$1$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
