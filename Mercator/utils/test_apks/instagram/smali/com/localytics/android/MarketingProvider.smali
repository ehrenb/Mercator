.class Lcom/localytics/android/MarketingProvider;
.super Lcom/localytics/android/BaseProvider;
.source "MarketingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsEventV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignsGeofenceTriggerV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignAttributesV3Columns;,
        Lcom/localytics/android/MarketingProvider$PlacesCampaignV3Columns;,
        Lcom/localytics/android/MarketingProvider$InboxCampaignAttributesV3Columns;,
        Lcom/localytics/android/MarketingProvider$InboxCampaignV3Columns;,
        Lcom/localytics/android/MarketingProvider$CamapignsDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutTimeV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutWeekdayV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutDateV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingDisplayFrequencyV3Columns;,
        Lcom/localytics/android/MarketingProvider$FrequencyCappingV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionValuesV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionsV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRuleEventV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRulesV3Columns;
    }
.end annotation


# static fields
.field static final DATABASE_VERSION:I = 0x5


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0, p2, p1}, Lcom/localytics/android/BaseProvider;-><init>(Lcom/localytics/android/LocalyticsDao;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mDbPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingProvider;->determineCreativeLocation(Ljava/lang/String;)V

    .line 43
    invoke-interface {p2}, Lcom/localytics/android/LocalyticsDao;->getAndroidVersionInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingProvider;->moveCreativesIfNecessary(I)V

    .line 51
    new-instance v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;

    iget-object v1, p0, Lcom/localytics/android/MarketingProvider;->mDbPath:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p2}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v0}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method determineCreativeLocation(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAndroidVersionInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1, v0}, Lcom/localytics/android/LocalyticsDao;->useNewCreativeLocation(Z)V

    .line 132
    const-string v0, "Use new creatives location after Lollipop."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/localytics/android/LocalyticsDao;->useNewCreativeLocation(Z)V

    .line 137
    const-string v0, "Use old creatives location."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method maxSiloDbSize()J
    .locals 4

    .prologue
    .line 65
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/localytics/android/Constants;->BYTES_IN_A_MEGABYTE:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method moveCreativesIfNecessary(I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 77
    const/16 v0, 0x15

    if-lt p1, v0, :cond_4

    .line 80
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v0}, Lcom/localytics/android/CreativeManager;->getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/localytics/android/MarketingProvider;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v0}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v1, v2}, Lcom/localytics/android/Utils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved creatives from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to newCreativeRootDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string v0, "Removed old creatives folder."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-static {v2}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 99
    const-string v2, "Failed to copy creative file"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_1
    iget-boolean v0, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string v0, "Removed old creatives folder."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    :try_start_2
    const-string v2, "Old creative directory doesn\'t exist"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    iget-boolean v2, p0, Lcom/localytics/android/MarketingProvider;->mDatabaseJustMoved:Z

    if-eqz v2, :cond_3

    .line 113
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 114
    const-string v1, "Removed old creatives folder."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    :cond_3
    throw v0

    .line 120
    :cond_4
    const-string v0, "No need to move creatives."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0
.end method
