.class abstract Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LocalyticsDatabaseHelper"
.end annotation


# static fields
.field static final SQLITE_BOOLEAN_FALSE:Ljava/lang/String; = "0"

.field static final SQLITE_BOOLEAN_TRUE:Ljava/lang/String; = "1"

.field private static completedMigrations:I

.field static oldDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static oldDBFile:Ljava/io/File;


# instance fields
.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .locals 5

    .prologue
    .line 526
    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 528
    iput-object p3, p0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 529
    const-class v1, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;

    monitor-enter v1

    .line 531
    :try_start_0
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 533
    const-string v0, "com.localytics.android.%s.sqlite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-interface {p3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 535
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    .line 536
    sget-object v2, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    const/4 v2, 0x0

    sput v2, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 539
    new-instance v2, Lcom/localytics/android/MigrationDatabaseHelper;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3, p3}, Lcom/localytics/android/MigrationDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :try_start_1
    invoke-virtual {v2}, Lcom/localytics/android/MigrationDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 551
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 546
    const-string v0, "Error opening old database; old data will not be retained."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static cleanUpOldDB()V
    .locals 2

    .prologue
    .line 557
    sget v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 558
    sget v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 560
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 561
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 563
    :cond_0
    return-void
.end method

.method static resetStaticVars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 568
    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    .line 569
    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 570
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 571
    return-void
.end method


# virtual methods
.method protected abstract migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
