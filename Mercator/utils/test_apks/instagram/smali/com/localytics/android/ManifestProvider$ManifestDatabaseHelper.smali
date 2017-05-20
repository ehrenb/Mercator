.class Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "ManifestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ManifestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManifestDatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 125
    const-string v0, "CREATE TABLE %s (%s INTEGER DEFAULT 0);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "last_campaign_download"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 119
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    const-string v0, "SQLite library version is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "select sqlite_version()"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/localytics/android/ManifestProvider$ManifestDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    :cond_0
    return-void
.end method
