.class public Lcm/aptoide/pt/database/realm/Download;
.super Lio/realm/ad;
.source "Download.java"

# interfaces
.implements Lio/realm/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/database/realm/Download$DownloadError;,
        Lcm/aptoide/pt/database/realm/Download$DownloadState;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNGRADE:I = 0x2

.field public static final ACTION_INSTALL:I = 0x0

.field public static final ACTION_UPDATE:I = 0x1

.field public static final BLOCK_COMPLETE:I = 0x2

.field public static final COMPLETED:I = 0x1

.field public static final CONNECTED:I = 0x3

.field public static final DOWNLOAD_ID:Ljava/lang/String; = "appId"

.field public static final ERROR:I = 0x9

.field public static final FILE_MISSING:I = 0xa

.field public static final GENERIC_ERROR:I = 0x1

.field public static final INVALID_STATUS:I = 0x0

.field public static final IN_QUEUE:I = 0xd

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NOT_DOWNLOADED:I = 0xc

.field public static final NOT_ENOUGH_SPACE_ERROR:I = 0x2

.field public static final PAUSED:I = 0x6

.field public static final PENDING:I = 0x4

.field public static final PROGRESS:I = 0x5

.field public static final RETRY:I = 0xb

.field public static final STARTED:I = 0x8

.field public static TAG:Ljava/lang/String; = null

.field public static final WARN:I = 0x7


# instance fields
.field private Icon:Ljava/lang/String;

.field private action:I

.field private appName:Ljava/lang/String;

.field private downloadError:I

.field private downloadSpeed:I

.field filesToDownload:Lio/realm/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field overallDownloadStatus:I

.field overallProgress:I

.field private packageName:Ljava/lang/String;

.field private scheduled:Z

.field private timeStamp:J

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/database/realm/Download;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 46
    iput v0, p0, Lcm/aptoide/pt/database/realm/Download;->overallDownloadStatus:I

    .line 47
    iput v0, p0, Lcm/aptoide/pt/database/realm/Download;->overallProgress:I

    .line 61
    return-void
.end method

.method private getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$downloadError()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    sget v0, Lcm/aptoide/pt/database/R$string;->out_of_space_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget v0, Lcm/aptoide/pt/database/R$string;->simple_error_occured:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    instance-of v0, p1, Lcm/aptoide/pt/database/realm/Download;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/database/realm/Download;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/database/realm/Download;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v3

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_e
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_11
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getTimeStamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadSpeed()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getDownloadSpeed()I

    move-result v3

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v3

    if-eq v2, v3, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->isScheduled()Z

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->isScheduled()Z

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadError()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getDownloadError()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$action()I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadError()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$downloadError()I

    move-result v0

    return v0
.end method

.method public getDownloadSpeed()I
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$downloadSpeed()I

    move-result v0

    return v0
.end method

.method public getFilesToDownload()Lio/realm/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$Icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverallDownloadStatus()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$overallDownloadStatus()I

    move-result v0

    return v0
.end method

.method public getOverallProgress()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$overallProgress()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$overallDownloadStatus()I

    move-result v0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-direct {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    sget v0, Lcm/aptoide/pt/database/R$string;->download_completed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_2
    sget v0, Lcm/aptoide/pt/database/R$string;->download_paused:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_3
    sget v0, Lcm/aptoide/pt/database/R$string;->download_progress:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_4
    sget v0, Lcm/aptoide/pt/database/R$string;->download_queue:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$timeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$versionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 20
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getTimeStamp()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadSpeed()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x4f

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getVersionName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadError()I

    move-result v1

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
    const/16 v0, 0x61

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->realmGet$scheduled()Z

    move-result v0

    return v0
.end method

.method public realmGet$Icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->Icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$action()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->action:I

    return v0
.end method

.method public realmGet$appName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$downloadError()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->downloadError:I

    return v0
.end method

.method public realmGet$downloadSpeed()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->downloadSpeed:I

    return v0
.end method

.method public realmGet$filesToDownload()Lio/realm/aa;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->filesToDownload:Lio/realm/aa;

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$overallDownloadStatus()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->overallDownloadStatus:I

    return v0
.end method

.method public realmGet$overallProgress()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->overallProgress:I

    return v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$scheduled()Z
    .locals 1

    iget-boolean v0, p0, Lcm/aptoide/pt/database/realm/Download;->scheduled:Z

    return v0
.end method

.method public realmGet$timeStamp()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Download;->timeStamp:J

    return-wide v0
.end method

.method public realmGet$versionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Download;->versionCode:I

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Download;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$Icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->Icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$action(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->action:I

    return-void
.end method

.method public realmSet$appName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->appName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$downloadError(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->downloadError:I

    return-void
.end method

.method public realmSet$downloadSpeed(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->downloadSpeed:I

    return-void
.end method

.method public realmSet$filesToDownload(Lio/realm/aa;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->filesToDownload:Lio/realm/aa;

    return-void
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->md5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$overallDownloadStatus(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->overallDownloadStatus:I

    return-void
.end method

.method public realmSet$overallProgress(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->overallProgress:I

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$scheduled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcm/aptoide/pt/database/realm/Download;->scheduled:Z

    return-void
.end method

.method public realmSet$timeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Download;->timeStamp:J

    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Download;->versionCode:I

    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Download;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$action(I)V

    .line 194
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$appName(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setDownloadError(I)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$downloadError(I)V

    .line 69
    return-void
.end method

.method public setDownloadSpeed(I)V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$downloadSpeed(I)V

    .line 170
    return-void
.end method

.method public setFilesToDownload(Lio/realm/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$filesToDownload(Lio/realm/aa;)V

    .line 138
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$Icon(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$md5(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setOverallDownloadStatus(I)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$overallDownloadStatus(I)V

    .line 146
    return-void
.end method

.method public setOverallProgress(I)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$overallProgress(I)V

    .line 154
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$packageName(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setScheduled(Z)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$scheduled(Z)V

    .line 202
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Download;->realmSet$timeStamp(J)V

    .line 77
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$versionCode(I)V

    .line 178
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Download;->realmSet$versionName(Ljava/lang/String;)V

    .line 218
    return-void
.end method
