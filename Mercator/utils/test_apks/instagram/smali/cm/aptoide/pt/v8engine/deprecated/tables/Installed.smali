.class public final Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Installed.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final pm:Landroid/content/pm/PackageManager;

.field private updatesTable:Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;-><init>()V

    .line 26
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;->pm:Landroid/content/pm/PackageManager;

    .line 48
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;->updatesTable:Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;

    return-void
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lio/realm/ad;
    .locals 3

    .prologue
    .line 56
    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "package_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 61
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/database/realm/Installed;-><init>(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/deprecated/tables/Installed;->updatesTable:Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/deprecated/tables/Updates;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
