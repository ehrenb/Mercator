.class public interface abstract Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;
.super Ljava/lang/Object;
.source "RollbackInstallation.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/install/installer/Installation;


# virtual methods
.method public abstract downloadLink()Ljava/lang/String;
.end method

.method public abstract getAltDownloadLink()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIcon()Ljava/lang/String;
.end method

.method public abstract getMainObbName()Ljava/lang/String;
.end method

.method public abstract getMainObbPath()Ljava/lang/String;
.end method

.method public abstract getPatchObbName()Ljava/lang/String;
.end method

.method public abstract getPatchObbPath()Ljava/lang/String;
.end method

.method public abstract getTimeStamp()J
.end method

.method public abstract save()V
.end method
