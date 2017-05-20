.class public interface abstract Lio/realm/d;
.super Ljava/lang/Object;
.source "DownloadRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$Icon()Ljava/lang/String;
.end method

.method public abstract realmGet$action()I
.end method

.method public abstract realmGet$appName()Ljava/lang/String;
.end method

.method public abstract realmGet$downloadError()I
.end method

.method public abstract realmGet$downloadSpeed()I
.end method

.method public abstract realmGet$filesToDownload()Lio/realm/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$md5()Ljava/lang/String;
.end method

.method public abstract realmGet$overallDownloadStatus()I
.end method

.method public abstract realmGet$overallProgress()I
.end method

.method public abstract realmGet$packageName()Ljava/lang/String;
.end method

.method public abstract realmGet$scheduled()Z
.end method

.method public abstract realmGet$timeStamp()J
.end method

.method public abstract realmGet$versionCode()I
.end method

.method public abstract realmGet$versionName()Ljava/lang/String;
.end method

.method public abstract realmSet$Icon(Ljava/lang/String;)V
.end method

.method public abstract realmSet$action(I)V
.end method

.method public abstract realmSet$appName(Ljava/lang/String;)V
.end method

.method public abstract realmSet$downloadError(I)V
.end method

.method public abstract realmSet$downloadSpeed(I)V
.end method

.method public abstract realmSet$filesToDownload(Lio/realm/aa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$md5(Ljava/lang/String;)V
.end method

.method public abstract realmSet$overallDownloadStatus(I)V
.end method

.method public abstract realmSet$overallProgress(I)V
.end method

.method public abstract realmSet$packageName(Ljava/lang/String;)V
.end method

.method public abstract realmSet$scheduled(Z)V
.end method

.method public abstract realmSet$timeStamp(J)V
.end method

.method public abstract realmSet$versionCode(I)V
.end method

.method public abstract realmSet$versionName(Ljava/lang/String;)V
.end method
