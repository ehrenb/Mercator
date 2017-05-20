.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Updates.java"


# static fields
.field public static final COLUMN_ALT_URL:Ljava/lang/String; = "alt_url"

.field public static final COLUMN_FILESIZE:Ljava/lang/String; = "filesize"

.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field public static final COLUMN_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final COLUMN_REPO:Ljava/lang/String; = "repo"

.field public static final COLUMN_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final COLUMN_UPDATE_VERCODE:Ljava/lang/String; = "update_vercode"

.field public static final COLUMN_UPDATE_VERNAME:Ljava/lang/String; = "update_vername"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_VERCODE:Ljava/lang/String; = "version_code"

.field private static final NAME:Ljava/lang/String; = "updates"

.field private static final TAG:Ljava/lang/String;

.field private static final realm:Lio/realm/u;


# instance fields
.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->TAG:Ljava/lang/String;

    .line 51
    invoke-static {}, Lio/realm/u;->n()Lio/realm/u;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->realm:Lio/realm/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;-><init>()V

    .line 52
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private isExcluded(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 108
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 109
    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->get(Ljava/lang/String;Z)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lrx/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lio/realm/ad;
    .locals 4

    .prologue
    .line 60
    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "package_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->isExcluded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 65
    new-instance v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/Update;-><init>()V

    .line 67
    const-string v2, "icon"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Update;->setIcon(Ljava/lang/String;)V

    .line 68
    const-string v2, "md5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Update;->setMd5(Ljava/lang/String;)V

    .line 69
    const-string v2, "package_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Update;->setPackageName(Ljava/lang/String;)V

    .line 70
    const-string v2, "alt_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Update;->setAlternativeApkPath(Ljava/lang/String;)V

    .line 71
    const-string v2, "filesize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/realm/Update;->setFileSize(D)V

    .line 72
    const-string v2, "timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/realm/Update;->setTimestamp(J)V

    .line 74
    const-string v2, "update_vername"

    .line 75
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/realm/Update;->setUpdateVersionName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setUpdateVersionName(Ljava/lang/String;)V

    .line 80
    :cond_0
    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setApkPath(Ljava/lang/String;)V

    .line 81
    const-string v1, "version_code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setVersionCode(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    const-string v1, "update_vercode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 84
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setUpdateVersionCode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :cond_1
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "updates"

    return-object v0
.end method
