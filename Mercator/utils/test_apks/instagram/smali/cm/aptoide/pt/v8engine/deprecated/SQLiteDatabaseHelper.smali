.class public Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x37

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private agregateExceptions:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "aptoide.db"

    const/4 v1, 0x0

    const/16 v2, 0x37

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 144
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->agregateExceptions:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 145
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->agregateExceptions:Ljava/lang/Throwable;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->agregateExceptions:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->needsSqliteDbMigration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Migrating database started...."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Repo;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Repo;-><init>()V

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Repo;->migrate(Landroid/database/sqlite/SQLiteDatabase;Lcm/aptoide/pt/database/accessors/Accessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    :try_start_1
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Excluded;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Excluded;-><init>()V

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Excluded;->migrate(Landroid/database/sqlite/SQLiteDatabase;Lcm/aptoide/pt/database/accessors/Accessor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_2
    :try_start_2
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Rollback;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Rollback;-><init>()V

    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    .line 105
    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    .line 104
    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Rollback;->migrate(Landroid/database/sqlite/SQLiteDatabase;Lcm/aptoide/pt/database/accessors/Accessor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :goto_3
    :try_start_3
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Scheduled;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Scheduled;-><init>()V

    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 112
    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    .line 111
    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Scheduled;->migrate(Landroid/database/sqlite/SQLiteDatabase;Lcm/aptoide/pt/database/accessors/Accessor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    :goto_4
    :try_start_4
    new-instance v1, Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads;-><init>()V

    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Downloads;->migrate(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 135
    :goto_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->agregateExceptions:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->agregateExceptions:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Migrating database finished."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->logException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->logException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 106
    :catch_2
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->logException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 113
    :catch_3
    move-exception v0

    .line 114
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->logException(Ljava/lang/Exception;)V

    goto :goto_4

    .line 128
    :catch_4
    move-exception v0

    .line 129
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->logException(Ljava/lang/Exception;)V

    goto :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setNeedsSqliteDbMigration(Z)V

    .line 44
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 63
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade() called with: oldVersion = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], newVersion = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setNeedsSqliteDbMigration(Z)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade() called with: oldVersion = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], newVersion = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setNeedsSqliteDbMigration(Z)V

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setWizardAvailable(Z)V

    .line 59
    return-void
.end method
