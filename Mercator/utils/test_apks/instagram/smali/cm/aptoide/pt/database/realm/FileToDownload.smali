.class public Lcm/aptoide/pt/database/realm/FileToDownload;
.super Lio/realm/ad;
.source "FileToDownload.java"

# interfaces
.implements Lio/realm/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/database/realm/FileToDownload$FileType;
    }
.end annotation


# static fields
.field public static final APK:I = 0x0

.field public static final GENERIC:I = 0x2

.field public static final OBB:I = 0x1


# instance fields
.field private altLink:Ljava/lang/String;

.field private downloadId:I

.field private fileName:Ljava/lang/String;

.field private fileType:I

.field private link:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private progress:I

.field private status:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->fileType:I

    return-void
.end method

.method public static createFileToDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Lcm/aptoide/pt/database/realm/FileToDownload;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;-><init>()V

    .line 42
    invoke-virtual {v0, p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->setLink(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/database/realm/FileToDownload;->setMd5(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->setAltLink(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p6}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$versionCode(I)V

    .line 46
    invoke-virtual {v0, p7}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$versionName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p4}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileType(I)V

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    if-nez p4, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v0, p5}, Lcm/aptoide/pt/database/realm/FileToDownload;->setPackageName(Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 52
    :cond_1
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/database/realm/FileToDownload;->setFileName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    instance-of v0, p1, Lcm/aptoide/pt/database/realm/FileToDownload;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/database/realm/FileToDownload;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_f

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v3

    if-eq v2, v3, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getProgress()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getProgress()I

    move-result v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_18

    if-eqz v3, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionCode()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionCode()I

    move-result v3

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAltLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$altLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadId()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$downloadId()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$fileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcm/aptoide/pt/utils/IdUtils;->randomString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$fileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$fileType()I

    move-result v0

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$link()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$progress()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$status()I

    move-result v0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$versionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 17
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getAltLink()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getProgress()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getStatus()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionCode()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getVersionName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public realmGet$altLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->altLink:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$downloadId()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->downloadId:I

    return v0
.end method

.method public realmGet$fileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$fileType()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->fileType:I

    return v0
.end method

.method public realmGet$link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->link:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$progress()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->progress:I

    return v0
.end method

.method public realmGet$status()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->status:I

    return v0
.end method

.method public realmGet$versionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->versionCode:I

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$altLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->altLink:Ljava/lang/String;

    return-void
.end method

.method public realmSet$downloadId(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->downloadId:I

    return-void
.end method

.method public realmSet$fileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->fileName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$fileType(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->fileType:I

    return-void
.end method

.method public realmSet$link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->link:Ljava/lang/String;

    return-void
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->md5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$progress(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->progress:I

    return-void
.end method

.method public realmSet$status(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->status:I

    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->versionCode:I

    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/FileToDownload;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setAltLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$altLink(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setDownloadId(I)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$downloadId(I)V

    .line 97
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$fileName(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setFileType(I)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$fileType(I)V

    .line 105
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$link(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$md5(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$packageName(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$path(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$progress(I)V

    .line 113
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/FileToDownload;->realmSet$status(I)V

    .line 73
    return-void
.end method
