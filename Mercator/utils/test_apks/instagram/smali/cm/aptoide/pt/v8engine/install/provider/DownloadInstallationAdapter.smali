.class public Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;
.super Ljava/lang/Object;
.source "DownloadInstallationAdapter.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;


# instance fields
.field private final download:Lcm/aptoide/pt/database/realm/Download;

.field private downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 25
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 26
    return-void
.end method


# virtual methods
.method public downloadLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAltDownloadLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 66
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainObbPath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 93
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 83
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 84
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPatchObbPath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 75
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->downloadAccessor:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationAdapter;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->save(Lcm/aptoide/pt/database/realm/Download;)V

    .line 110
    return-void
.end method
